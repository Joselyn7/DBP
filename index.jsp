<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SabinaPiaWeb</title>
<style><%@include file="/CSS/MyStyle.css"%></style>
        <title>Formulario de registro - Mi web</title>
        <script>
            function validar() 
            {
                var Nombre , Apellidos, correo;
                Nombre = document.getElementById("Nombre").value;
                Apellidos = document.getElementById("Apellidos").value;
                correo = document.getElementById("correo").value;
                var ER=/[a-z]/;
                var ERC=/\w+@\w+\.+[a-z]/;
                if(Nombre ==="" || Apellidos ===""){
                    alert("Campo vacio");
                    return false;
                }
               else if(!ER.test(Nombre) || !ER.test(Apellidos)){
                   alert("Solo se permite uso de caracteres alfabeticos");
                   return false;
               }
               else if(!ERC.test(correo)){
                   alert("correo incorrecto");
                   return false;
               }
               
            }
        </script>
</head>
<body>
        <section class="Form-A" >
            <h1 class="titulo">FORMULARIO DE REGISTRO - MI WEB</h1>
            <form name="Formulario" method="get" onsubmit="return validar()" action="" >
                <p>
                    <label>Nombre:<input class="box" id="Nombre" type="text" name="Nombre" maxlength="50" placeholder="Joselyn" style="color:#F6D2EA" required></label> 
            
                </p>
                <p>
                    <label>Apellidos:<input class="box" id="Apellidos" type="text" name="Apellidos" maxlength="50" placeholder="Quispe Huanca" style="color:#F6D2EA" required></label>
                    
                </p>
                <p>
                    <label>Hombre<input class="sexo" type="radio" name="sexo" value="hombre" ></label>      
                    <label>Mujer<input  class="sexo "type="radio" name="sexo" value="mujer"></label>  
                </p>
                <p>
                    <label>Correo:<input class="box" id="correo" type="email" name="correo" placeholder="usuario@example.com" style="color:#F6D2EA" required></label>
                </p>
                <p>
                    <label for="Lugar">Ciudad:</label>
                    <select class="box" name="lugar:" id="Lugar" style="color:#F6D2EA">
                        <option value="1">Alicante</option>
                        <option value="2">Madrid</option>
                        <option value="3">Sevilla</option>
                        <option value="4">Valencia</option>

                    </select>
                </p>
                
                <label>Descripción:<textarea class="box" name="text" cols="20" rows="5" style="color:#F6D2EA"></textarea> </label>
                
                <p>
                    <label><input class="in" type="checkbox" name="info" value="información" checked>Deseo recibir información sobre novedades y ofertas</label>
                </p>
                <p>
                    <label><input  class="in" type="checkbox" name="term" value="terminos" checked>Declaro haber leido y aceptar <a href= "#" >las condiciones generales del programa y la normativa sobre protección de datos</a></label>
                </p>
                <p>
                    <input type="submit" value="Enviar" class="boton" >
                </p>
            </form>
            
        </section>
</body>
</html>