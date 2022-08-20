package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Publisher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       \n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("       \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Publisher Details </title>\n");
      out.write("  <!--  <script type=\"text/javascript\">\n");
      out.write("            function validate()\n");
      out.write("            {\n");
      out.write("                var pubName = document.publisher.pname.value;\n");
      out.write("                var pubAddress = document.publisher.address.value;\n");
      out.write("                var pubMno =document.publisher.mno.value;\n");
      out.write("          if(pubName ===\"\" || pubName===null)\n");
      out.write("                {\n");
      out.write("                    alert(\"Enter the Publisher Name\");\n");
      out.write("                    return false;\n");
      out.write("                \n");
      out.write("                else if(pubAddress ===\"\" || pubAddress===null)\n");
      out.write("                {\n");
      out.write("                    document.publisher.address.value=\"Name can''t be empty\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("          function clear()\n");
      out.write("          {\n");
      out.write("              document.publisher.address.value=\" \";\n");
      out.write("              return true;\n");
      out.write("          }\n");
      out.write("            }*/\n");
      out.write("        </script>-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("        <hr>\n");
      out.write("        <h2 class=\"heading\"><center> Add Publisher Details</center></h2>\n");
      out.write("        <form  name=\"publisher\"method=\"post\" action=\"PublisherDetailsAdd.jsp\">\n");
      out.write("            <table border=\"1pts\">\n");
      out.write("                <tr>\n");
      out.write("                    <td> Publisher Name:</td>\n");
      out.write("                    <td><input type\"text\" name=\"pname\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address:</td>\n");
      out.write("                    <td><textarea name=\"address\" required></textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>M.No:</td>\n");
      out.write("                    <td><input type=\"number\" name=\"mno\" required></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <br>\n");
      out.write("            <center>    <input type=\"submit\" value=\"Add Publisher\"></center>\n");
      out.write("            <center> <input type =\"reset\" value=\"Reset\"></center>\n");
      out.write("        </form> \n");
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
