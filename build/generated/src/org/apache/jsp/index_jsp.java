package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>Graphical Password Authentication System</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/arial.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cuf_run.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"main\">\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"header_resize\">\n");
      out.write("      <div class=\"logo\">\n");
      out.write("          <h2 align=\"center\" style=\"font-size: xx-large;\">            \n");
      out.write("                GRAPHICAL PASSWORD AUTHENTICATION SYSTEM\n");
      out.write("        </h2>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"menu_nav\">\n");
      out.write("        <ul>\n");
      out.write("            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"UserLogin.jsp\">User Login</a></li>\n");
      out.write("            <li><a href=\"NewUser.jsp\">New User</a></li>\n");
      out.write("            <li><a href=\"About.jsp\">About us</a></li>\n");
      out.write("            <li class=\"last\"><a href=\"Contact.jsp\">Contact us</a></li>            \n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"header_img\"> \n");
      out.write("          <img src=\"images/applicant1.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("          <img src=\"images/applicant2.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("          <img src=\"images/applicant_new.jpg\" alt=\"\" width=\"395\" height=\"180\" />\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"clr\"></div>\n");
      out.write("  <div class=\"content\">\n");
      out.write("    <div class=\"content_resize\">\n");
      out.write("      <div class=\"mainbar\">\n");
      out.write("        <div class=\"article\">\n");
      out.write("          <h2><span>Secure Portal</span></h2>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("          <img src=\"images/applicant_header.jpg\" width=\"385\" height=\"205\" alt=\"\" />\n");
      out.write("          \n");
      out.write("          <p style=\"text-align: justify;text-indent: 50px;line-height: 25px;\">\n");
      out.write("                A  graphical password system with a supportive sound signature to increase the remembrance of the password is discussed. In proposed work a click-based graphical password scheme called Cued Click Points (CCP)is presented. In this system a password consists of sequence of some images in which user can select one click-point per image. In addition user is asked to select a sound signature corresponding to click point this sound signature will be used to help the user to login. System showed very good Performance in terms of speed, accuracy, and ease of use. Users preferred CCP to Pass Points, saying that selecting and remembering only one point per image was easier and sound signature helps considerably in recalling the click points.\n");
      out.write("          </p>          \n");
      out.write("          <br/>\n");
      out.write("        </div>     \n");
      out.write("      </div>      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"fbg\">    \n");
      out.write("    <div class=\"footer\">\n");
      out.write("      <p class=\"lf\">&copy; Copyright <a href=\"#\">Graphical Password Authentication Portal Team</a>.</p>\n");
      out.write("      <p class=\"rf\">Developed By<a href=\"http://www.freewebsitetemplatez.com/\">&nbsp;AMS</a></p>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
