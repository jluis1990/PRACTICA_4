

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            html, body {
                margin: 0px;
                padding: 0px;
                font-family: tahoma, arial,serif;
                font-size: small;
                background: #f9f9f9;
            }
            #contenedor {
                width: 960px;
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
                padding-top: 30px;
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
    <center>
        <h1>
            <c:if test="${aviso.id==0}">Nuevo</c:if> 
            <c:if test="${aviso.id!=0}" >Editar</c:if>

            </h1>
            <form action="inicio" method="post">
                <input type="hidden" name="id" value="${aviso.id}" />
            <table>
                <tr><td>Titulo:</td>
                    <td><input type="text" name="titulo" value="${aviso.titulo}"/></td>
                </tr>
                <tr>
                    <td>Contenido:</td>
                    <td><textarea name="contenido" rows="20" cols="40">
                            ${aviso.contenido}
                        </textarea></td>
                </tr>
                <tr><td>Autor:</td>
                    <td><input type="text" name="autor" value="${aviso.autor}"/></td>
                </tr>
                <tr><td>Fecha:</td>
                    <td><input type="date" id="start" name="fecha"
                               value="${aviso.fecha}"
                               min="2018-01-01" max="2018-12-31"></td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit"></td>
                </tr>

            </table>

        </form>
    </center>
</body>
</html>
