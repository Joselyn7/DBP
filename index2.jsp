<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 	<head>
 	<meta http-equiv="Content-Type"
 	content="text/html; charset=UTF-8">
 	<title>DATOS RECOPILADOS</title>
 	</head>
 	<body>
 	<%
 	// Extracción de los parámetros recibidos
 	String nombre = request.getParameter("nombre");
 	String apellidos = request.getParameter("apellidos");
 	String mail = request.getParameter("mail");
 	String genero = request.getParameter("genero");
 	String Java= request.getParameter("java");
 	String c = request.getParameter("c");
 	String haskell = request.getParameter("haskell");
 	String html = request.getParameter("html");

 	String[] idiomasSelec =
 	request.getParameterValues("idiomas");
 	%>

 	<h1> ¡Solicitud Recibida!</h1>
 	<h2> DATOS: </h2>

 	<table>
	 	<tr>
	 		<td align="right"> Nombre: </td>
	 		<td> <%= nombre %> </td> 
	 	</tr>
	 	<tr>
	 		<td align="right"> Apellidos: </td>
	 		<td> <%= apellidos %> </td>
	 	</tr>
	 	<tr>
	 		<td align="right"> Correo: </td>
	 		<td> <%= mail %> </td>
	 	</tr>
	 	<tr>
	 		<td align="right"> Sexo: </td>
	 		<td> <%=genero %> </td>
	 	</tr>

 	</table>

	<p> Manejas los siguientes lenguajes de programación: <br>
	<% if ( Java!= null) { %>
			Java,
	
	<% }%>
	
	<% if ( c != null) { %>
			C/C++,
	<% }%>
	<% if ( haskell != null) { %>
			haskell,
	
	 <% }%>
	<% if ( html != null) { %>
	 		html,
	
	<% }%>
	
	 </p>
 	<p> Los idiomas que comprendes son: <br>
 	<%
 	for( int i=0; i< idiomasSelec.length; i++)
	{
	 %>
	<%= idiomasSelec[i] %>
	 <% } %>
 	</p>

	<form action="index1.jsp" method="post">
	<input type="submit" value="Regresar">
 	</form>
 	</body>
</html>