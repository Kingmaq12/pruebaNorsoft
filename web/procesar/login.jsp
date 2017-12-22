<%@page import="ufps.plantilla.negocio.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    
    
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    
    Negocio nego = new Negocio();
    
    String rta ="";
    if(nego.login(user,password)){
        rta="S";
    }else{
        rta="N";
    }
    
    %>
    
    
    <%= rta%>
