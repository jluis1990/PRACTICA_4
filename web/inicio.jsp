
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIO</title>
        <style type="text/css">
            html, body {
                margin: 0px;
                padding: 0px;
                font-family: tahoma, arial,serif;
                font-size: small;
                background: #f9f9f9;
            }
            #contenedor {
                width: 1000px;
                margin: auto;
            }
            header {
                display: block;
                background-color: #FFF5CC;
                height: 80px;
            }
            h2 {
                font-size: 180%;
                font-weight: normal;

            }
            h3 {
                font-size: 120%;
            }
            header {
                display: block;
                padding: 10px;
                margin: 10px;
                background: #fff;
            }
            section {
                width: 79%;
                background: #fff;
                float: left;
                overflow: auto;
                padding-bottom: 60px;
                padding-top: 60px;
            }
            article .info  {
                margin: 10px;
                padding-bottom: 8px;
                border-bottom: 1px solid #dee5fd;
                color: #6685cc;
            }
        </style>
    </head>
    <body>
        <div id="contenedor">
            <section> 
                <p align="right">ADMINISTRADOR&nbsp;&nbsp;<a href="login.jsp">INICIO</a></p>
                <h1 ALIGN="CENTER" >BLOG DE SALUD</h1>
                <p><a href="inicio?action=add">Nuevo</a></p>
                <c:forEach var="item" items="${avisos}">
                    <article>
                        <input type="hidden" name="id" value="${item.id}"><br>
                        <p class="info">
                            <span class="fecha">${item.fecha}</span><br>
                        <h2  >${item.titulo}</h2>
                        </p>
                        <p>${item.contenido}</p>
                        <p class="btn-leer">${item.autor}</p>
                        <p align="right">  <a href="inicio?action=edit&id=${item.id}" ALIGN="right">Editar</a>
                            <a href="inicio?action=delete&id=${item.id}" onclick="return (confirm('Esta seguro'))"  >Eliminar</a></p>
                        <p ALIGN="CENTER">__________________________________________________________________________________________________________________________</p>
                    </article>
                </c:forEach>

            </section> 
        </div>
    </body>
</html>
