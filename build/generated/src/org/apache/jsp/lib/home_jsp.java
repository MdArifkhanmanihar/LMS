package org.apache.jsp.lib;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>LMS</title>\n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("        <hr>\n");
      out.write("        \n");
      out.write("        <div class=\"dropdown\">\n");
      out.write("            <button  class=\"btn btn-primary\">Publisher</button>\n");
      out.write("            <div class=\"dropdown-content\" >\n");
      out.write("                <a href=\"Publisher.jsp\">Add Publisher</a>\n");
      out.write("                <a href=\"PublisherDelete.jsp\">Delete Publisher</a>\n");
      out.write("                <a href=\"PublisherDetailsView.jsp\">View Publisher Details</a>\n");
      out.write("                <a href =\"PublisherUpdateFrontend.jsp\">Updte Publisher Details</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"dropdown\">\n");
      out.write("            <button class=\"btn btn-secondary\">Books</button>\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"Books.jsp\">Add Books</a>\n");
      out.write("                <a href=\"BooksDelete.jsp\">Delete Books</a>\n");
      out.write("                <a href=\"BooksDetailsView.jsp\">View Book Details</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("          <div class=\"dropdown\">\n");
      out.write("            <button class=\"btn btn-dark\">Authors Details</button>\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"Authors.jsp\">Add Authors Details</a>\n");
      out.write("                <a href=\"AuthorsDetailsView.jsp\">View Author Details</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("          <div class=\"dropdown\">\n");
      out.write("            <button class=\"dropbtn\">Branch Details</button>\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"Branch.jsp\">Add Branch Details</a>\n");
      out.write("               <a href=\"BranchsDelete.jsp\">Delete Branch Details</a>\n");
      out.write("                <a href=\"BranchsDetailsViewSpecific.jsp\">View Branch Details</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("              <div class=\"dropdown\">\n");
      out.write("            <button class=\"dropbtn\">Copies Details</button>\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"Copies.jsp\">Add Number of Copies</a>\n");
      out.write("                <a href=\"CopiesDetailsView.jsp\">View Number of Copies Details</a>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"dropdown\">\n");
      out.write("            <button class=\"dropbtn\">Book Lending</button>\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"BooksLending.jsp\">Add Books Borrowing Details</a>\n");
      out.write("                <a href=\"CardDelete.jsp\">Delete by Card Nos</a>\n");
      out.write("                <a href=\"BooksLendingDetailsView.jsp\">View Books Lending  Details</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("           \n");
      out.write("        <button> <a href=\"Login.jsp\"> Logout</a> </button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("     \n");
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
