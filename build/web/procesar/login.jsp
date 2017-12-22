<%@page import="negocio.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    
    
    //Envia los datos al Negocio para validar el ingreso de usuario.
    
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
