package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(3);
    _jspx_dependants.add("/WEB-INF/jspf/cabecalho.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/menu.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/rodape.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      			"erro.jsp", true, 8192, true);
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
      out.write("        <link rel=\"stylesheet\" href=\"../style/styles.css\"/>\n");
      out.write("        <title>Primeiro Trabalho LP3</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <h1>Primeiro Trabalho LP3</h1>\n");
      out.write("        </header>");
      out.write('\n');
      out.write("<nav><center>\n");
      out.write("            <a href=\"../index.jsp\" >Página Inicial</a>\n");
      out.write("            <a href=\"../lst1q01/index.jsp\" >Exercício 01</a>\n");
      out.write("            <a href=\"../lst1q02/index.jsp\" >Exercício 02</a>\n");
      out.write("            <a href=\"../lst1q03/index.jsp\" >Exercício 03</a>\n");
      out.write("            <a href=\"../lst1q04/index.jsp\" >Exercício 04</a>\n");
      out.write("            <a href=\"../lst1q05/index.jsp\" >Exercício 05</a>\n");
      out.write("            <a href=\"../lst1q06/index.jsp\" >Exercício 06</a>\n");
      out.write("            </center>\n");
      out.write("        </nav>\n");
      out.write("    \n");
      out.write("        <article>");
      out.write("\n");
      out.write("        <p>Rogério esteves De Paulo</p>\n");
      out.write("        <p>Alysson silva Campeão</p>\n");
      out.write("        </article>\n");
      out.write("        <footer>\n");
      out.write("            <p>Desenvolvido por Alysson silva Campeão e Rogério esteves De Paulo</p>\n");
      out.write("        </footer>\n");
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
