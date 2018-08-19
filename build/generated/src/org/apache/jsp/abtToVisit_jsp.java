package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class abtToVisit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Companies</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String c = request.getParameter("cname");
            String ct = request.getParameter("con");
            String l = request.getParameter("lead");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/pas_db", "root", "");
            Statement st = conn.createStatement();
            String sql = "SELECT * from comdata";
            ResultSet rs = st.executeQuery(sql);
            //response.sendRedirect("entry1.jsp");

        
      out.write("\n");
      out.write("        <table border=\"5\" width=\"3\" cellspacing=\"3\" cellpadding=\"2\">     \n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Id</th>\n");
      out.write("                    <th>Company Name</th>\n");
      out.write("                    <th>Lead</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");
  String name, ld, ph;
                    int i = 0;
                    while (rs.next()) {
                        name = rs.getString(1);
                        ld = rs.getString(4);
                        ph = rs.getString(3);
                        i = i + 1;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(name);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(ld);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(ph);
      out.write("</td>\n");
      out.write("                    <td><input type=\"submit\" name=\"vbtn\" value=\"Visited\"></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }

                
      out.write("\n");
      out.write("\n");
      out.write("            </tbody>    \n");
      out.write("        </table>     \n");
      out.write("    </body>\n");
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
