<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<%
    Integer N1 = Integer.parseInt(request.getParameter("N1"));    
    Integer N2 = Integer.parseInt(request.getParameter("N2"));
    Integer D = Integer.parseInt(request.getParameter("D"));
    boolean R1;
    boolean R2;
    
    if (N1 <= N2/3){
        R1 = true;
    } else {
        R1 = false;
    }
    
    if (D >= 1 && D <= N1){
        R2 = true;
    } else {
        R2 = false;
    }
%>
    <body>
<%
    if (R1 != true || R2 != true){
%>
    <h2>Resultado - Uma ou mais condições não foram aceitas!!!</h2>
    <p><var>N1</var> <= <var>N2</var> / 3</p>
    <p><kbd><%=N1%></kbd> <= <kbd><%=N2%></kbd> / 3</p>
    <h3> Status - Condição aceita: <samp><%=R1%></samp></h3>
    <p>1 <= <var>D</var> <= <var>N1</var></p>
    <p>1 <= <kbd><%=D%></kbd> <= <kbd><%=N1%></kbd></p>
    <h3> Status - Condição aceita: <samp><%=R2%></samp></h3>
    
    <p><a href ="index.jsp">Tentar novamente</a></p>
<%
    }
%>
<p>Valores entre <var>N1</var> e <var>N2</var> divisiveis por <var>D</var>.</p>
    <ul>
<%
    for (int i = N1; i <= N2; i++){
        float mod = i%D;
        
        if (mod == 0){
%>
        <li><%=i%></li>
<%
       }
    }
%>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>