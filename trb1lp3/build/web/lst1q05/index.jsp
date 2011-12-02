<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
        <form action="index.jsp" method="get">
            <p>
                <label>N1:</label>
                <input type="number" name="N1" placeholder="Ex: 4"/>
                <label>N2:</label>
                <input type="number" name="N2" placeholder="Ex: 15"/>
                <input type="submit" name="Calcular" class="formSub"/>
            </p>
        </form>

<%
    int n1;
    int n2;

    try {
        n1 = Integer.parseInt(request.getParameter("N1"));
        n2 = Integer.parseInt(request.getParameter("N2"));
    } catch (Exception e) {
        n1 = 0;
        n2 = 0;
    }

    if (n2 != 0) {
%>
        <table>
            <tr>
                <th></th>
<%
        for(int cabecalho = 0; cabecalho <= 10; cabecalho++){
%>
                <th><%=cabecalho%></th> 
<%
        }
%>
            </tr>
<%
        for(int linha = n1; linha <= n2; linha++){
%>
            <tr>
                <th><%=linha%></th>
<%
            for(int coluna = 0; coluna <= 10; coluna++) {
%>
                <td><%=linha * coluna%></td> 
<%
            }
%>
            </tr>
<%
        }
%>
        </table>
<%

    }

%>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>