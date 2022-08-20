package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import lms.DbConnection;
import java.sql.Connection;
import java.sql.ResultSet;

public final class Copies_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>No. of Copies of Books Details</title>\n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("  <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("               <hr>\n");
      out.write("        <h1 class=\"heading\">Add Details of Book Copies </h1>\n");
      out.write("        ");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String noc = "select branch_id from library. lib_branch;";
            String noc2 ="select book_id from library.book";
             PreparedStatement ps = con.prepareStatement(noc2);
             ResultSet rs = ps.executeQuery();
             out.println("<form method =post action = CopiesAdd.jsp>");
             out.println(" <table border=1><tr><td>Select the Book ID</td>");
             out.println("<td><select name= book_id>");
             while(rs.next())
             {
             out.println("<option>"+rs.getInt("book_id")+"</option>");
             }
             out.println("</select></td></tr>");
             out.println("<tr><td>Select the Branch Id</td>");
             ps.close();
             rs.close();
             ps = con.prepareStatement(noc);
             rs = ps.executeQuery();
             out.println("<td><select name= branch_id>");
             
             while(rs.next())
             {
             out.println("<option>"+rs.getInt("branch_id")+"</option>");
             }
             out.println("</select></td></tr>");
             out.println("<tr><td>Enter the no.copies</td><td> <input type=number name=noc></td></tr>");
             out.println("</table>");
             out.println("<center><input type =submit value =Add No. of Copies></center>");
             out.println("</form>");
             

        
      out.write("\n");
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
