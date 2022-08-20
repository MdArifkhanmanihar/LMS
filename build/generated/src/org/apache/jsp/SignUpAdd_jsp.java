package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import lms.DbConnection;
import java.sql.Connection;

public final class SignUpAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Create Account</title>\n");
      out.write("        <link rel=\"stylesheet\"type=\"text/css\" href=\"libcss.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"heading\"><center>Library Management System</center></h1>\n");
      out.write("        <hr>\n");
      out.write("        <h1 class=\"heading\">Sign Up </h1>\n");
      out.write("\n");
      out.write("        ");

              String uname = request.getParameter("uname");
             String pwd =request.getParameter("pwd");
            String role = request.getParameter("role");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String logintab = "select Uname from library.login";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(logintab);
            /*String[] usernames = null;
            //String status =null;
            //  status ="true";
            while (rs.next()) {
             //   out.println("name:"+rs.getString("Uname"));
               // usernames =rs.getString(1);
            Array username = rs.getArray("Uname");
            //    out.println("username");
                usernames = (String[]) username.getArray();
            }
       /*     for (String s : usernames) {
                out.println("username" + usernames);
            }*/
            /*    for (String s :usernam
                {
                    if (s==uname)
                    {
                        out.println("Name already exits!");
                        status = "false";
                        break;
                    }
                }*/
                
                
                 String sql = "insert into library.login values(?,?,?)";
                 PreparedStatement ps = con.prepareStatement(sql);
                 ps.setString(1, uname);
                 ps.setString(2, pwd);
                 ps.setString(3,role);
            
                 int i = ps.executeUpdate();
                 if (i > 0) {
                     out.println("<b><center> Thank Your For Sign Up</center><b>");
                     out.println("<br><center><a href=Login.jsp> Login Here</a><center>");
                 } else {
                     out.println("<script>alert(' Check Your Registration!');</script>");
                 }
        
                 ps.close();
                 con.close();
                
        
      out.write("\n");
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
