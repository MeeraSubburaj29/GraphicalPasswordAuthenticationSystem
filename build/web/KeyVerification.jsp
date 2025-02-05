<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Graphical Password Authentication System</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <h2 align="center" style="font-size: xx-large;">            
                            GRAPHICAL PASSWORD AUTHENTICATION SYSTEM
                        </h2>
                    </div>
                    <div class="clr"></div>
                    <div class="menu_nav">
                        <ul>
                            <li class="active"><a href="ViewProfile.jsp">View Profile</a></li>
                            <li><a href="FileUpload.jsp">File Upload</a></li>
                            <li><a href="FileDownload.jsp">File Download</a></li>
                            <li class="last"><a href="logout.jsp">Logout</a></li>
                            <li style="color:blue;font-style: italic;font-size: 18px;font-weight: bold;">Welcome ${sessionScope.UserId}</li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                    <div class="header_img"> 
                        <img src="images/applicant1.jpg" alt="" width="395" height="180" />
                        <img src="images/applicant2.jpg" alt="" width="395" height="180" />
                        <img src="images/applicant_new.jpg" alt="" width="395" height="180" />
                    </div>
                </div>
            </div>
            <div class="clr"></div>
            <div class="content">
                <div class="content_resize">
                    <div class="mainbar">
                        <div class="article">
                            <h2><span>Secure Portal</span></h2>
                            <div class="clr"></div>
                            <img src="images/applicant_header.jpg" width="385" height="205" alt="" />

                            <%!     
                                ResultSet rs;
                                String fileid, userid;
                            %>
                            <%
                                fileid = request.getParameter("fileid");
                                userid = request.getParameter("userid");
                                ps = con.prepareStatement("select * from uploadfiles where fileid=? and fileowner=?");
                                ps.setString(1, fileid);
                                ps.setString(2, userid);
                                rs = ps.executeQuery();
                                if (rs.next()) {
                                    String filename = rs.getString(2);
                                    String uploadedDate = rs.getString(4);
                            %>
                            <form name="form1" action="FileDownloadProcess.jsp" method="post">
                                <center>
                                    <table cellspacing="18">
                                        <tr>
                                            <th colspan="2" style="font-size: x-large;">Key Verification to Download File</th>
                                        </tr>
                                        <tr>
                                            <td>File Id</td>
                                            <td>${param.fileid}<input type="hidden" name="fileid" value="${param.fileid}"/></td>
                                        </tr>
                                        <tr>
                                            <td>File Owner</td>
                                            <td>${param.userid}<input type="hidden" name="userid" value="${param.userid}"/></td>
                                        </tr>
                                        <tr>
                                            <td>File Name</td>
                                            <td><%=filename%></td>
                                        </tr>
                                        <tr>
                                            <td>File Key</td>
                                            <td><input type="text" name="filekey" value=""/></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input type="submit" name="s1" value="Download"/></td>
                                        </tr>
                                    </table>
                                </center>
                            </form>
                            <%
                                }
                            %>
                            <h4 style="color: red;">${param.msg}</h4>


                            <br/><br/><br/>
                        </div>     
                    </div>      
                </div>
            </div>
            <div class="fbg">    
                <div class="footer">
                    <p class="lf">&copy; Copyright <a href="#">Graphical Password Authentication Portal Team</a>.</p>
                    <p class="rf">Developed By<a href="http://www.freewebsitetemplatez.com/">&nbsp;AMS</a></p>
                    <div class="clr"></div>
                </div>
            </div>
        </div>
    </body>
</html>