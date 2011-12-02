<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<%
    float juros;
    float capital = 1000.00f;
    float taxa = 0.01f;
    int periodo;
    float montante;

    try {
        periodo = Integer.parseInt(request.getParameter("periodo"));
    } catch (Exception e) {
        periodo = 12;
    }

    try {
        taxa = Float.parseFloat(request.getParameter("taxa"));
    } catch (Exception e) {
        taxa = 0.01f;
    }

    juros = capital * taxa * periodo;
    montante = capital + juros;

%>

        <p>Para um investimento inicial de R$ <samp><%=capital%></samp> a uma taxa de juros simples de <kbd><%=taxa * 100%></kbd>% ao mês, você terá R$ <kbd><%=montante%></kbd> ao final de <kbd><%=periodo%></kbd> meses.</p>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>