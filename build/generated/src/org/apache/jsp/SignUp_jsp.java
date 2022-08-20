package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"libcss.css\">\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function validatepwd()\n");
      out.write("            {\n");
      out.write("                alert('Welcome');\n");
      out.write("                var pwd=document.f1.pwd.value;\n");
      out.write("                if(pwd.length<8)\n");
      out.write("                {\n");
      out.write("                    alert('Password is too short');\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("        <hr>\n");
      out.write("        <h1 class=\"heading\">New User Sign Up Here </h1>\n");
      out.write("        <form method =\"post \" action =\"SignUpAdd.jsp\" name=\"f1\">        \n");
      out.write("            <table border =\"1\">\n");
      out.write("                   <tr><td>  Select Your Role:</td><td><select name=\"role\">\n");
      out.write("                            <option>Librarian </option>\n");
      out.write("                            <option>Student</option>\n");
      out.write("                        </select></td></tr>\n");
      out.write("                <tr><Td>Enter the user Name:</td><td><input type =\" text\" name=\"uname\" requried></td></tr>\n");
      out.write("                <tr><td>Enter the Password:</td><td><input type =\"password\"  name=\"pwd\"  required></td></tr>\n");
      out.write("             \n");
      out.write("            </table>\n");
      out.write("            <br>\n");
      out.write("            <center> <input type =\"submit\" value =\"Sign Up\" onclick=\"return validatepwd();\"></center>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("        <h2 class=\"heading\"> Already Registered user Login Here</h2>\n");
      out.write("    <center>  <button> <a href=\"Login.jsp\"> Login</a> </button> </center>\n");
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
