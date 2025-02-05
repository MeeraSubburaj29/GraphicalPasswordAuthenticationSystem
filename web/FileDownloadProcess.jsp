<%@page import="java.security.SecureRandom"%>
<%@page import="java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            ResultSet rs;
            ServletOutputStream sout;
            String fileid, userid, fileKey;
            String filePath, fileName;
            FileInputStream fin;
            ByteArrayOutputStream bout;
            int c;
        %>
        <%
            fileid=request.getParameter("fileid");
            userid=request.getParameter("userid");
            fileKey=request.getParameter("filekey");
            
            ps=con.prepareStatement("select filekey,filename from uploadfiles where fileid=? and fileowner=?");
            ps.setString(1, fileid);
            ps.setString(2, userid);
            rs=ps.executeQuery();
            if(rs.next()){
                if(fileKey.equals(rs.getString(1))){
                    fileName=rs.getString(2);
                    
                    sout=response.getOutputStream();
                    filePath=application.getRealPath("")+"\\"+userid+"\\"+fileName;
                    
                    fin=new FileInputStream(filePath);
                    bout=new ByteArrayOutputStream();
                    while((c=fin.read())!=-1)
                        bout.write(c);
                    byte []buffer=bout.toByteArray();
                    bout.close();
                    fin.close();
                    
                    String fileContent=new String(buffer);
                    
                    
                    response.setHeader("Content-Disposition", "attachment;filename="+fileName);
                    filePath=application.getRealPath("")+"\\"+userid+"\\"+fileName;
                    
                    fin=new FileInputStream(filePath);
                    while((c=fin.read())!=-1)
                        sout.write(c);
                    fin.close();
                    sout.close();
                }
                else{
                    response.sendRedirect("FileDownload.jsp?msg=Invalid File Key for File Id: "+fileid);
                }
            }
        %>
    </body>
</html>
