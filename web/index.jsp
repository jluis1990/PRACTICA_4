
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
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
       <center> <h2>LOGIN</h2>
        <form action="<%=request.getContextPath()%>/MainController" method="post">
            <table>
                <tr>
                    <td><strong>Usuario:</strong></td>
                    <td></td>
                    <td><input type="text" name="usuario" value="" size="15" /></td>
                </tr>
                <tr>
                    <td><strong>Contraseña:</strong></td>
                    <td></td>
                    <td><input type="password" name="password" value="" size="15" /></td>
                </tr>
            </table>
            <input type="submit" value="Enviar" name="botonEnviar" />
        </form>
    </center>
</body>
</html>