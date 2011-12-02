<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
        <form action="manipuladados.jsp" method="get">
            <p>
               
                    <label for="N1">N1:</label>
               
                    <input type="number" name="N1"placeholder="Ex: 4"/>
                
                    <label for="N2">N2:</label>
               
                    <input type="number" name="N2" placeholder="Ex: 15"/>
                
                    <label for="D">D:</label>
                
                    <input type="number" name="D" placeholder="Ex: 3"/>
               
                    <input type="submit" name="Calcular" class="formSub"/>
                
            </p>
        </form>
        
<%@include file="../WEB-INF/jspf/rodape.jspf"%>