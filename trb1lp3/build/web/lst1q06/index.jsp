<%@page errorPage="../erro.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<%
    float altura;
    float massa;
    float IMC;

    try{
        altura = Float.parseFloat(request.getParameter("altura"));
        massa = Float.parseFloat(request.getParameter("massa"));
    } catch (Exception e) {
        altura = 0;
        massa = 0;
        IMC = 0;
    }
    
    IMC = massa / (altura * altura);
%>
        <form action="index.jsp" method="post">
            <p>   
             <label>Altura:</label>
             <input type="text" name="altura" size="18" placeholder="Ex: 1.80"/>
             <label>Massa:</label>
             <input type="number" name="massa" placeholder="Ex: 80"/>
             <input type="submit" value="Calcular" class="formSub" />
            </p>
        </form>

        <table>
            <thead>
                <tr>
                    <th>IMC</th>
                    <th>Classificação</th>
                </tr>
            </thead>
            <tbody>
<%
    if (IMC <= 18.5){
%>
                <tr class="sucesso">
                    <td>< 18,5</td>
                    <td>Magreza</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>< 18,5</td>
                    <td>Magreza</td>
                </tr>
<%
   }
    
    if (IMC > 18.5 && IMC <= 24.9) {
%>
                <tr class="sucesso">
                    <td>18,6 - 24,9</td>
                    <td>Saudável</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>18,6 - 24,9</td>
                    <td>Saudável</td>
                </tr>
<%
   }
    
    if (IMC > 24.9 && IMC <=29.9){
%>
                <tr class="sucesso">
                    <td>25,0 - 29,9</td>
                    <td>Peso em excesso</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>25,0 - 29,9</td>
                    <td>Peso em excesso</td>
                </tr>
<%
   }
    
    if (IMC > 29.9 && IMC <= 34.9) {
%>
                <tr class="sucesso">
                    <td>30,0 - 34,9</td>
                    <td>Obesidade Grau I</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>30,0 - 34,9</td>
                    <td>Obesidade Grau I</td>
                </tr>
<%
   }
    
    if (IMC >= 34.9 && IMC <= 39.9) {
%>
                <tr class="sucesso">
                    <td>35,0 - 39,9</td>
                    <td>Obesidade Grau II</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>35,0 - 39,9</td>
                    <td>Obesidade Grau II</td>
                </tr>
<%
   }
    
    if (IMC > 39.9) {
%>
                <tr class="sucesso">
                    <td>>= 40,0</td>
                    <td>Obesidade Grau III</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>>= 40,0</td>
                    <td>Obesidade Grau III</td>
                </tr>
<%
   }
%>
            </tbody>
        </table>

<%@include file="../WEB-INF/jspf/rodape.jspf"%>