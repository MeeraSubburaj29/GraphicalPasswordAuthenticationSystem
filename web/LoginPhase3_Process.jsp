<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.101.0">
        <title>Graphical Password Authentication System</title>

        <link href="bootstrap.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            .b-example-divider {
                height: 3rem;
                background-color: rgba(0, 0, 0, .1);
                border: solid rgba(0, 0, 0, .15);
                border-width: 1px 0;
                box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
            }

            .b-example-vr {
                flex-shrink: 0;
                width: 1.5rem;
                height: 100vh;
            }

            .bi {
                vertical-align: -.125em;
                fill: currentColor;
            }

            .nav-scroller {
                position: relative;
                z-index: 2;
                height: 2.75rem;
                overflow-y: hidden;
            }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }
        </style>

        <!-- Custom styles for this template -->
        <link href="signin.css" rel="stylesheet">
    </head>
    <body class="text-center">
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
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="UserLogin.jsp">User Login</a></li>
                            <li><a href="NewUser.jsp">New User</a></li>
                            <li><a href="About.jsp">About us</a></li>
                            <li class="last"><a href="Contact.jsp">Contact us</a></li>            
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
                            
                            <div class="clr"></div>
                            <img src="images/applicant_header.jpg" width="385" height="205" alt="" />
                            <div style="width:550px; margin-left: 450px;">
                                <main class="form-signin w-150 m-auto">
                                    <%!
                                        int x1,y1,x2,y2,x3,y3,x4,y4,x5,y5;
                                        int x1_img, y1_img;
                                        int x2_img, y2_img;
                                        int x3_img, y3_img;
                                        int x4_img, y4_img;
                                        int x5_img, y5_img;
                                        ResultSet rs;
                                        String colorPattern, colorPattern_db;
                                    %>
                                    <%
                                        colorPattern=request.getParameter("color_pattern");
                                        ps=con.prepareStatement("select * from ColorPattern where userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            colorPattern_db=rs.getString(2);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        ps=con.prepareStatement("select * from ImagePattern where ImageId=1 and userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            x1=rs.getInt(3);
                                            y1=rs.getInt(4);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        ps=con.prepareStatement("select * from ImagePattern where ImageId=2 and userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            x2=rs.getInt(3);
                                            y2=rs.getInt(4);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        ps=con.prepareStatement("select * from ImagePattern where ImageId=3 and userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            x3=rs.getInt(3);
                                            y3=rs.getInt(4);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        ps=con.prepareStatement("select * from ImagePattern where ImageId=4 and userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            x4=rs.getInt(3);
                                            y4=rs.getInt(4);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        ps=con.prepareStatement("select * from ImagePattern where ImageId=5 and userid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            x5=rs.getInt(3);
                                            y5=rs.getInt(4);
                                        }
                                        rs.close();
                                        ps.close();
                                        
                                        
                                        x1_img=Integer.parseInt(session.getAttribute("Image1_X").toString());
                                        y1_img=Integer.parseInt(session.getAttribute("Image1_Y").toString());
                                        
                                        x2_img=Integer.parseInt(session.getAttribute("Image2_X").toString());
                                        y2_img=Integer.parseInt(session.getAttribute("Image2_Y").toString());
                                        
                                        x3_img=Integer.parseInt(session.getAttribute("Image3_X").toString());
                                        y3_img=Integer.parseInt(session.getAttribute("Image3_Y").toString());
                                        
                                        x4_img=Integer.parseInt(session.getAttribute("Image4_X").toString());
                                        y4_img=Integer.parseInt(session.getAttribute("Image4_Y").toString());
                                        
                                        x5_img=Integer.parseInt(session.getAttribute("Image5_X").toString());
                                        y5_img=Integer.parseInt(session.getAttribute("Image5_Y").toString());
                                        
                                        if(((x1_img<=x1+5 && x1_img>=x1-5) && (y1_img<=y1+5 && y1_img>=y1-5)) && ((x2_img<=x2+5 && x2_img>=x2-5) && (y2_img<=y2+5 && y2_img>=y2-5)) && ((x3_img<=x3+5 && x3_img>=x3-5) && (y3_img<=y3+5 && y3_img>=y3-5)) && ((x4_img<=x4+5 && x4_img>=x4-5) && (y4_img<=y4+5 && y4_img>=y4-5)) && ((x5_img<=x5+5 && x5_img>=x5-5) && (y5_img<=y5+5 && y5_img>=y5-5)))
                                        {
                                            if(colorPattern.equals(colorPattern_db)){
                                                response.sendRedirect("UserHome.jsp");
                                            }
                                            else{
                                                out.println("<h2 style='color:red;text-align:center;'>Sorry!! Either Invalid Click points of Image Pattern or Invalid Selection of Color Pattern!!</h2>");
                                            }
                                        }
                                        else{
                                            out.println("<h2 style='color:red;text-align:center;'>Sorry!! Either Invalid Click points of Image Pattern or Invalid Selection of Color Pattern!!</h2>");
                                        }
                                    %>
                                    
                                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                                </main>
                            </div>
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
