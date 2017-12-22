/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function nuevoAjax() {
    var xmlhttp = false;
    try {
        // Creacion del objeto AJAX para navegadores no IE Ejemplo:Mozilla, Safari 
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            // Creacion del objet AJAX para IE
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            if (!xmlhttp && typeof XMLHttpRequest != 'undefined')
                xmlhttp = new XMLHttpRequest();
        }
    }
    return xmlhttp;
}

function iniciar() {

    ajax = nuevoAjax();
    parametros = "user=" + document.getElementById("user").value + "&password=" + document.getElementById("password").value;
    url = "procesar/login.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {

        if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {
                var rta = ajax.responseText;
                if (rta.indexOf("S") > 0) {
                    location.href = "consulta.jsp";
                    //document.location.href='la_otra_pagina.extension';
                } else {
                    document.getElementById("campo").innerHTML = "Usuario incorrecto.";
                    $("#login")[0].reset();
                }
            } else
            {

                var rta = ajax.responseText;
                if (rta.indexOf("S") > 0) {
                    location.href = "consulta.jsp";
                    //document.location.href='la_otra_pagina.extension';
                } else {
                    document.getElementById("campo").innerHTML = "Usuario incorrecto.";
                    $("#login")[0].reset();
                }
            }
        } else
        {
            document.getElementById(campo).value = "Procesando registro";
        }
    }

}

function consulta() {


    var departamento = searchIntoJson(departamentos, "departamentoId", document.getElementById("departamento").value);
    var ciudad = searchIntoJson(ciudades, "ciudadId", document.getElementById("ciudad").value);
    var dep;
    var ciu;


    if (departamento != 0 && ciudad != 0) {
        $.each(departamento, function (i, valor) {
            dep = valor.nombreDepartamento;
        });
        $.each(ciudad, function (i, valor) {
            ciu = valor.nombreCiudad;
        });
        ajax = nuevoAjax();
        parametros = "nombre=" + document.getElementById("nombre").value +
                "&apellido=" + document.getElementById("apellido").value +
                "&estado_civil=" + document.getElementById("estado_civil").value +
                "&fecha_nacimiento=" + document.getElementById("fecha_nacimiento").value +
                "&sueldo=" + document.getElementById("sueldo").value +
                "&email=" + document.getElementById("email").value +
                "&departamento=" + dep +
                "&ciudad=" + ciu;
        url = "procesar/consulta.jsp";
        ajax.open("POST", url, true);
        ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        ajax.send(parametros);
        ajax.onreadystatechange = function () {

            if (ajax.readyState == 4)
            {
                if (ajax.status == 200)
                {
                    var rta = ajax.responseText;
                    if (rta.indexOf("S") > 0) {
                        location.href = "resultado.jsp";
                    } else {
                        document.getElementById("campo").innerHTML = "Faltan Datos.";
                        $("#consulta")[0].reset();
                    }
                } else
                {

                    var rta = ajax.responseText;
                    if (rta.indexOf("S") > 0) {
                        location.href = "resultado.jsp";
                    } else {
                        document.getElementById("campo").innerHTML = "Faltan Datos.";
                        $("#consulta")[0].reset();
                    }
                }
            } else
            {
                document.getElementById(campo).value = "Procesando registro";
            }
        }
    } else {
        alert("Por favor seleccione departamento y ciudad");
    }


}
function solo(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ123456789";//Se define todo el abecedario que se quiere que se muestre.
    especiales = [8, 37, 39, 46, 6]; //Es la validación del KeyCodes, que teclas recibe el campo de texto.

    tecla_especial = false
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        alert('Tecla no aceptada');
        return false;
    }
}
