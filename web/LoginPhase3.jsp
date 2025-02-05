<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            var colors="";
            var i=1;
            function getColor(clr)
            {                
                if(i>3)
                {
                    alert("You clicked 3 colors already");
                }
                else
                {
                    colors=colors+clr+",";
                    if(i==3){
                        form1.color_pattern.value=colors;
                    }
                    i++;
                }                
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
                                    <form name="form1" method="post" action="LoginPhase3_Process.jsp">

                                        <h1 class="h3 mb-3 fw-normal" style="font-size: 25px;font-weight: bold;">
                                            Phase3 Registration
                                        </h1>
                                        <h2>
                                            Color Pattern (Select 3 Color Boxes randomly as you like)
                                        </h2>
                                        
                                        
                                        <button id="red" name="red" value="red" type="button" style="background-color: red;height:65px;width:65px;border-radius: 50px;" onclick="getColor(this.value);"/>
                                        <button id="green" name="green" value="green" type="button" style="background-color: green;height:65px;width:65px;border-radius: 50px;" onclick="getColor(this.value);"/>
                                        <button id="blue" name="blue" value="blue" type="button" style="background-color: blue;height:65px;width:65px;border-radius: 50px;" onclick="getColor(this.value);"/>
                                        <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
                                        <input type="hidden" id="color_pattern" name="color_pattern"/>
                                        <br/><br/><br/>
                                    </form>
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
