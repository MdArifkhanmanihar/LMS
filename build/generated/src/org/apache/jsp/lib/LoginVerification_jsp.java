package org.apache.jsp.lib;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import lms.DbConnection;
import java.sql.Connection;

public final class LoginVerification_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Verification</title>\n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String uname = request.getParameter("uname");

            String Pwd = request.getParameter("pwd");
            String Role = request.getParameter("role");

            //   String sql ="select * from library.login  l where l.Uname = uname and l.pwd =Pwd and l.role =Role";
          String sql ="select * from login  where  pwd ='"+Pwd+"' and role ='"+Role+"'";
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
           // rs.next();
            if(rs.next())
            {
                if(Role.equalsIgnoreCase("Librarian"))
                {
                    out.println("<h3 align=right id=uname>User Name:"+uname+"Role:"+Role+""+"</h3> ");
                    // out.println(" <br><center><a href =home.jsp>Go to DashBoard:</a><center>");
                    request.getRequestDispatcher("home.jsp").include(request, response);
                }
                else
                {
//                    out.println("<h3 align=right id=uname>User Name: "+uname+" Role:"+Role+""+"</h3> ");
//              out.println(" <br><center><a href =BooksDetailsView.jsp>View Available Books:</a><center>");
                       request.getRequestDispatcher("BooksDetailsView.jsp").include(request, response);
                }
            
            }
            
       
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
