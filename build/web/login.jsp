
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>
        <meta charset="utf-8" />
        <title>Login</title>
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
        <form name="login" id="login" method="POST" class="form-horizontal" action="javascript:iniciar()">
            <div class="container" >
                <br><br><br>
                <div class="panel panel-success">

                    <h2 class="text-center">Login Prueba Norsoft</h2>
                    <br><br><br>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Usuario: (user) </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" name="user" id="user" class="" required="required" maxlength="8" onKeyPress="return solo(event);">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Contraseña: (12345)</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="password" name="password" id="password" class="" required="required">
                        </div>
                    </div>
                    <br>

                    <div class="form-group"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" >Iniciar Sesion</button>
                        </div>
                    </div>
                    <br>
                    <label id="campo"></label>

                </div>
            </div>

            <br><br>
        </form> 

        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.js"></script>
        <!-- App -->
        <script type="text/javascript" src="procesar/ajax/procesos.js"></script>
        <script src="js/app.js"></script>
        <script src="js/app.plugin.js"></script>
        <script src="js/slimscroll/jquery.slimscroll.min.js"></script>


    </body>
</html>