<%@page import="ufps.plantilla.negocio.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    
    
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    
    String atributo1 = request.getParameter("atributo1");
    String atributo2 = request.getParameter("atributo2");
    String atributo3 = request.getParameter("atributo3");
    String atributo4 = request.getParameter("atributo4");
    String atributo5 = request.getParameter("atributo5");
    String atributo6 = request.getParameter("atributo6");
    String descripcion = request.getParameter("descripcion");
    
    
    Negocio nego = new Negocio();
    
    String rta ="";
    if(nego.registrar(atributo1,atributo2,atributo3,atributo4,atributo5,atributo6,descripcion)){
        rta="S";
    }else{
        rta="N";
    }
    
    %>
    
    
    <%= rta%>