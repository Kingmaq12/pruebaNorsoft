<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
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

        <form id="consulta" name="consulta" class="form-horizontal"  method="POST" action="javascript:consulta()">
            <div class="container" >
                <br><br><br>
                <div class="panel panel-success">
                    <h2 class="text-center" >Consulta Prueba Norsoft</h2>
                    <br><br><br>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Nombre: </label>
                        <div class="col-sm-6">
                            <input class="form-control" type="text" name="nombre" id="nombre" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Apellido: </label>
                        <div class="col-sm-6">
                            <input class="form-control" type="text" name="apellido" id="apellido" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Estado Civil</label>
                        <div class="col-sm-6">
                            <select class="form-control" name="estado_civil" id="estado_civil">
                                <option value="Soltero">Soltero</option>
                                <option value="Casado">Casado</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Fecha de Nacimiento:</label>
                        <div class="col-sm-6">
                            <input class="form-control" type="date" name="fecha_nacimiento" id="fecha_nacimiento" class="form-control" required="required">
                        </div>
                    </div>    
                    <div class="form-group">
                        <label class="control-label col-sm-2">Sueldo:</label>
                        <div class="col-sm-6">
                            <input class="form-control" type="number" name="sueldo" id="sueldo" class="form-control" required="required">
                        </div>

                    </div>    
                    <div class="form-group">
                        <label class="control-label col-sm-2">Email:</label>
                        <div class="col-sm-6">
                            <input class="form-control" type="email" name="email" id="email" class="form-control" required="required">
                        </div>

                    </div>    

                    <div class="form-group">
                        <label class="control-label col-sm-2">Departamento:</label>
                        <div class="col-sm-6">
                            <select class="form-control" name="departamento" id="departamento">
                                <option value="0" selected="selected">-No seleccion-</option>
                            </select>
                        </div>
                    </div>

                    <br/>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Ciudad:</label>
                        <div class="col-sm-6">
                            <select class="form-control" name="ciudad" id="ciudad">
                                <option value="0" selected="selected">-No seleccion-</option>
                            </select>
                        </div>
                    </div>


                    <div class="form-group"> 
                        <br>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg"> Consulta </button>
                        </div>

                    </div>  
                </div>
            </div>
        </form>
        <div class="form-group"> 
            <br>
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-primary btn-lg"><a href="/pruebaNorsoft/login.jsp"> Regresar </a></button>
            </div>

        </div> 

        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.js"></script>
        <!-- App -->
        <script type="text/javascript" src="procesar/ajax/procesos.js"></script>
        <script type="text/javascript" src="procesar/colombia.js"></script>
        <script src="js/app.js"></script>
        <script src="js/app.plugin.js"></script>
        <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
    </body>

</html>
