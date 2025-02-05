<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <style>
            tr{
                font-size: 15px;
            }
        </style>
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
                            %>
                            <table cellspacing="18" cellspacing="0" align="center">
                                <tr>
                                    <th colspan="7" style="font-size: x-large;">View & Download Files</th>
                                </tr>
                                <tr>
                                    <th>File Id</th>
                                    <th>File Name</th>
                                    <th>Uploaded Date</th>
                                    <th>File Key</th>
                                    <th>File Owner</th>
                                    <th>Download Files</th>
                                </tr>
                                <%
                                    ps = con.prepareStatement("select * from uploadfiles where fileowner=?");
                                    ps.setString(1, session.getAttribute("UserId").toString());
                                    rs = ps.executeQuery();
                                    while (rs.next()) {
                                        String fileid = rs.getString(1);
                                        String filename = rs.getString(2);
                                        String filekey = rs.getString(3);
                                        String uploadedDate = rs.getString(4);
                                        String fileowner = rs.getString(5);
                                %>
                                <tr>
                                    <td><%=fileid%></td>
                                    <td><%=filename%></td>
                                    <td><%=filekey%></td>
                                    <td><%=uploadedDate%></td>
                                    <td><%=fileowner%></td>
                                    <td><a href="KeyVerification.jsp?fileid=<%=fileid%>&userid=<%=fileowner%>">Download</a></td>
                                </tr>
                                <%
                                    }
                                    rs.close();
                                    ps.close();
                                %>
                            </table>
                                <center><h3 style="color: red;font-size: 18px;">${param.msg}</h3></center>

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