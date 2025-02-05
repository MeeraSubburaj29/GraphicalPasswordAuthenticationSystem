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
        <script>
            var loadFile = function(event) {
                var output = document.getElementById('image1');
                output.src = URL.createObjectURL(event.target.files[0]);
                output.onload = function() {
                    URL.revokeObjectURL(output.src); // free memory
                };
            };
            function getImagePosition(event){
                pos_x = event.offsetX?(event.offsetX):event.pageX-document.getElementById("pointer_div").offsetLeft;
	pos_y = event.offsetY?(event.offsetY):event.pageY-document.getElementById("pointer_div").offsetTop;
	document.getElementById("image1").style.left = (pos_x-1) ;
	document.getElementById("image1").style.top = (pos_y-15) ;
	document.getElementById("image1").style.visibility = "visible" ;
	//document.getElementById("x1").value = pos_x;
	//document.getElementById("y1").value = pos_y;
                document.form1.x1.value = pos_x;
	document.form1.y1.value = pos_y;
            }

        </script>

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
                                        ResultSet rs;
                                        String imageName;
                                    %>
                                    <%
                                        ps=con.prepareStatement("select * from ImagePattern where userid=? and imageid=?");
                                        ps.setString(1, session.getAttribute("UserId").toString());
                                        ps.setInt(2, 1);
                                        rs=ps.executeQuery();
                                        if(rs.next()){
                                            imageName=rs.getString(2);
                                            session.setAttribute("Image1", imageName);
                                        }
                                        rs.close();
                                        ps.close();
                                    %>
                                    <form name="form1" method="post" action="LoginPhase2_1.jsp">

                                        <h1 class="h3 mb-3 fw-normal" style="font-size: 25px;font-weight: bold;">
                                            Phase2 Login
                                        </h1>
                                        <h2>
                                            (Image Click Point-Image1)
                                        </h2>
                                        <h5>
                                           One Click Point on Image
                                        </h5>                                        
                                        <img id="image1" name="image1" src="${sessionScope.UserId}/<%=imageName%>" onclick="getImagePosition(event);" />
                                        <input type="hidden" name="x1" style="width: 65px;"/>
                                        <input type="hidden" name="y1" style="width: 65px;"/>
                                        <button class="w-100 btn btn-lg btn-primary" type="submit" name="s1" value="Submit">Goto Next Image</button>
                                    </form>
                                        <%!
                                        int x,y;
                                        %>
                                        <%
                                            if(request.getParameter("s1")!=null){
                                                x = Integer.parseInt(request.getParameter("x1"));
                                                y = Integer.parseInt(request.getParameter("y1"));
                                                session.setAttribute("Image1_X", x);
                                                session.setAttribute("Image1_Y", y);
            
                                                response.sendRedirect("LoginPhase2_2.jsp");
                                            }
                                        %>
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
