<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>
        <meta charset="utf-8" />
        <title>Resultado</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="css/animate.css" type="text/css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="css/font.css" type="text/css" />
        <link rel="stylesheet" href="js/calendar/bootstrap_calendar.css" type="text/css" />
        <link rel="stylesheet" href="css/app.css" type="text/css" />
        <link rel="stylesheet" href="css/jquery.bxslider.css">      

    </head>
    <body>

        <%
            String nombre = (String) session.getAttribute("nombre");
            String apellido = (String) session.getAttribute("apellido");
            String estado_civil = (String) session.getAttribute("estado_civil");
            String fecha_nacimiento = (String) session.getAttribute("fecha_nacimiento");
            String sueldo = (String) session.getAttribute("sueldo");
            String email = (String) session.getAttribute("email");
            String departamento = (String) session.getAttribute("departamento");
            String ciudad = (String) session.getAttribute("ciudad");
        %>

        <div class="container" >
            <br><br><br>
            <div class="panel panel-success">
                <h2 class="text-center" >Resultado Prueba Norsoft</h2>
                <br><br><br>
                <div class="container delinar">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Estado Civil</th>
                                <th>Fecha de Nacimiento</th>
                                <th>Sueldo</th>
                                <th>Email</th>
                                <th>Departamento</th>
                                <th>Ciudad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><%=nombre%></td>
                                <td><%=apellido%></td>
                                <td><%=estado_civil%></td>
                                <td><%=fecha_nacimiento%></td>
                                <td><%="$"+sueldo%></td>
                                <td><%=email%></td>
                                <td><%=departamento%></td>
                                <td><%=ciudad%></td>

                            </tr>

                        </tbody>
                    </table>
                </div>  

            </div>

            <div class="form-group"> 
                <br>
                <div class="col-sm-offset-2 col-sm-10">
                    <button class="btn btn-primary btn-lg"><a href="/pruebaNorsoft/consulta.jsp"> Regresar </a></button>
                </div>

            </div> 
        </div> 

        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.js"></script>
        <!-- App -->
        <script src="js/app.js"></script>
        <script src="js/app.plugin.js"></script>
        <script src="js/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="procesar/ajax/procesos.js"></script>
    </body>
</html>
