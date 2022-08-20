package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import lms.DbConnection;

public final class Authors_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Authors Details </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("        <hr>\n");
      out.write("        <h2 class=\"heading\"><center> Add Authors Details</center></h2>\n");
      out.write("        <form method=\"post\" action=\"AuthorsDetailsAdd.jsp\"> \n");
      out.write("            <table border=\"1pts\">\n");
      out.write("                <tr>\n");
      out.write("                    <td> Book ID:</td>\n");
      out.write("\n");
      out.write("                    <td><select name=BID>\";\n");
      out.write("                            ");

                                Connection con = null;
                                con = (Connection) DbConnection.initializeDatabase();
                                Statement st = con.createStatement();
                                String sql = "select book_id from library.book ";
                                ResultSet rs = st.executeQuery(sql);

                                while (rs.next()) {
                                    out.println("<option>" + rs.getInt("book_id") + "</option>");
                                }
                                out.println("</select></td></tr>");

                                st.close();
                                con.close();
                            
      out.write("\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>Enter the Author Name:</td><<td><input type=\"text\" name=\"aname\" placeholder=\"Author Name\" required></td></tr>\n");
      out.write("            </table>\n");
      out.write("            <br>\n");
      out.write("            <center>   <input type=\"submit\" value=\"Add Authors\"></center>\n");
      out.write("            <br>\n");
      out.write("            <center>   <button><a href =\"Login.jsp\"> Logout</a></buttom> </center>\n");
      out.write("        </form>\n");
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
