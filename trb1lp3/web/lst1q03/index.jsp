<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<%
    double aplicacao;
    double juros;
    int meses;
    double vFinal;

    try {
        aplicacao = Double.parseDouble(request.getParameter("aplicacao"));
    } catch (Exception e) {
        aplicacao = 5000;
    }

    try {
        juros = Double.parseDouble(request.getParameter("juros"));
    } catch (Exception e) {
        juros = 0.01;
    }

    try {
        meses = Integer.parseInt(request.getParameter("meses"));
    } catch (Exception e) {
        meses = 12;
    }

       vFinal = aplicacao * Math.pow((1 + juros), meses);
%>
    <body>
        <p>Para um investimento inicial de R$ <kbd><%=aplicacao%></kbd> a uma taxa de juros compostos de <kbd><%=juros*100%></kbd>% ao mês você terá R$ <samp><%=vFinal%></samp> ao final de <kbd><%=meses%></kbd> meses!</p>
<%
    if ((vFinal - aplicacao) / meses > 200) {
%>
        <h3 class="bomnegocio">Bom negócio!</h3>
<%
    } else {
%>
        <h3 class="maunegocio"> Mau negócio! </h3>
<%
    }
%>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>