package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n");
      out.write("        <meta name=\"generator\" content=\"Hugo 0.101.0\">\n");
      out.write("        <title>Graphical Password Authentication System</title>\n");
      out.write("\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/arial.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cuf_run.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .bd-placeholder-img {\n");
      out.write("                font-size: 1.125rem;\n");
      out.write("                text-anchor: middle;\n");
      out.write("                -webkit-user-select: none;\n");
      out.write("                -moz-user-select: none;\n");
      out.write("                user-select: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media (min-width: 768px) {\n");
      out.write("                .bd-placeholder-img-lg {\n");
      out.write("                    font-size: 3.5rem;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .b-example-divider {\n");
      out.write("                height: 3rem;\n");
      out.write("                background-color: rgba(0, 0, 0, .1);\n");
      out.write("                border: solid rgba(0, 0, 0, .15);\n");
      out.write("                border-width: 1px 0;\n");
      out.write("                box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .b-example-vr {\n");
      out.write("                flex-shrink: 0;\n");
      out.write("                width: 1.5rem;\n");
      out.write("                height: 100vh;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bi {\n");
      out.write("                vertical-align: -.125em;\n");
      out.write("                fill: currentColor;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .nav-scroller {\n");
      out.write("                position: relative;\n");
      out.write("                z-index: 2;\n");
      out.write("                height: 2.75rem;\n");
      out.write("                overflow-y: hidden;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .nav-scroller .nav {\n");
      out.write("                display: flex;\n");
      out.write("                flex-wrap: nowrap;\n");
      out.write("                padding-bottom: 1rem;\n");
      out.write("                margin-top: -1px;\n");
      out.write("                overflow-x: auto;\n");
      out.write("                text-align: center;\n");
      out.write("                white-space: nowrap;\n");
      out.write("                -webkit-overflow-scrolling: touch;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"signin.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"text-center\">\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <div class=\"header_resize\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <h2 align=\"center\" style=\"font-size: xx-large;\">            \n");
      out.write("                            GRAPHICAL PASSWORD AUTHENTICATION SYSTEM\n");
      out.write("                        </h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                    <div class=\"menu_nav\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"UserLogin.jsp\">User Login</a></li>\n");
      out.write("                            <li><a href=\"NewUser.jsp\">New User</a></li>\n");
      out.write("                            <li><a href=\"About.jsp\">About us</a></li>\n");
      out.write("                            <li class=\"last\"><a href=\"Contact.jsp\">Contact us</a></li>            \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                    <div class=\"header_img\"> \n");
      out.write("                        <img src=\"images/applicant1.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("                        <img src=\"images/applicant2.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("                        <img src=\"images/applicant_new.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clr\"></div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"content_resize\">\n");
      out.write("                    <div class=\"mainbar\">\n");
      out.write("                        <div class=\"article\">\n");
      out.write("                            \n");
      out.write("                            <div class=\"clr\"></div>\n");
      out.write("                            <img src=\"images/applicant_header.jpg\" width=\"385\" height=\"205\" alt=\"\" />\n");
      out.write("                            <div style=\"width:500px; margin-left: 450px;\">\n");
      out.write("                                <main class=\"form-signin w-100 m-auto\">\n");
      out.write("                                    <form name=\"form1\" method=\"post\" action=\"LoginProcess.jsp\">\n");
      out.write("\n");
      out.write("                                        <h1 class=\"h3 mb-3 fw-normal\">Please Sign in (Phase1)</h1>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"floatingInput\" placeholder=\"User Id\" name=\"userid\" required>\n");
      out.write("                                            <label for=\"floatingInput\">Username</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" id=\"pwd\" placeholder=\"Password\" name=\"pwd\" required>\n");
      out.write("                                            <label for=\"floatingPassword\">Password</label>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <button class=\"w-100 btn btn-lg btn-primary\" type=\"submit\">Sign in</button>\n");
      out.write("                                        <!--<p class=\"mt-5 mb-3 text-muted\">&copy; 2017-2022</p>-->\n");
      out.write("                                    </form>\n");
      out.write("                                    <h6 style=\"color:red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h6>\n");
      out.write("                                </main>\n");
      out.write("                            </div>\n");
      out.write("                        </div>     \n");
      out.write("                    </div>      \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"fbg\">    \n");
      out.write("                <div class=\"footer\">\n");
      out.write("                    <p class=\"lf\">&copy; Copyright <a href=\"#\">Graphical Password Authentication Portal Team</a>.</p>\n");
      out.write("                    <p class=\"rf\">Developed By<a href=\"http://www.freewebsitetemplatez.com/\">&nbsp;AMS</a></p>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
