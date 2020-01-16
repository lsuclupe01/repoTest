<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><title>login</title>
<script>
$().ready(function() {
  $("#login-form").validate({
		rules: {
			j_username: "required",
			j_password: "required"
			
		}
	});
	
});	
</script>
</head>
<body>
<div id="resolucion">
<form name="login-form"  id="login-form" action="<%=request.getContextPath() %>/<c:url value='j_spring_security_check' />"		method='POST' >
<table >
<tbody>
<tr>
<td>Bienvenidos al Módulo de Registro de Viaticos de la
Dirección Ejecutiva de Investigación Criminal y Apoyo a la Justicia PNP - DIREICAJ. 
Para acceder al Sistema Ud.
deberá ingresar su código de usuario, la
contraseña y presionar el botón de Ingresar.&nbsp;</td>
<td width="320">
<table style="text-align: left; width: 100%;" class="login">
<thead>
<tr>
<td colspan="2" rowspan="1" >Inicio de
sesi&oacute;n</td>
</tr>
</thead>
<tbody>
<tr>
<td>Usuario :</td>
<td><input maxlength="20" size="15" name="j_username" id="j_username" type="text"></td>
</tr>
<tr>
<td>Contraseña :</td>
<td><input maxlength="20" size="15" name="j_password" id="j_password" type="password"></td>
</tr>
<tr>
<td colspan="2" rowspan="1" align="center">
<input name="btnCancelar" value="Cancelar" class="button-link-sec" type="reset">&nbsp;
<input name="btnIngresar" value="Ingresar"  class="button-link" type="submit"></td>
</tr>
<tr>
	<td colspan="2" rowspan="1" align="center">
		<form:errors path="usuario" cssClass="errors"/>
		<form:errors path="password" cssClass="errors"/>
		<c:if test="${not empty error}">
			<div class="errorblock">
				Mensaje:
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
		
	</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

</form>
</div>
</body></html>