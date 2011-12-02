<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
        <%System.out.println(new java.util.Date());%>
        <p><samp><%out.print(new java.util.Date());%></samp></p>
        <p><samp><%=new java.util.Date()%></samp></p>
        <!--<%=new java.util.Date()%>-->
        <a href="index.jsp">Atualizar </a>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>