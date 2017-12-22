<% 
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String estado_civil = request.getParameter("estado_civil");
    String fecha_nacimiento = request.getParameter("fecha_nacimiento");
    String sueldo = request.getParameter("sueldo");
    String email = request.getParameter("email");
    String departamento = request.getParameter("departamento");
    String ciudad = request.getParameter("ciudad");

    session.setAttribute("nombre", nombre);
    session.setAttribute("apellido", apellido);
    session.setAttribute("estado_civil", estado_civil);
    session.setAttribute("fecha_nacimiento", fecha_nacimiento);
    session.setAttribute("sueldo", sueldo);
    session.setAttribute("email", email);
    session.setAttribute("departamento", departamento);
    session.setAttribute("ciudad", ciudad);

    String rta = "";
    rta = "S";
%>    

<%= rta%>

