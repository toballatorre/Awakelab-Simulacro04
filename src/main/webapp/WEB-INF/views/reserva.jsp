<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home - Simulacion 04</title>
        
        <!-- BOOTSTRAP CSS -->
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
			integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
			crossorigin="anonymous">
		
		<!-- FONTAWESOME -->
		<script src="https://kit.fontawesome.com/99da01f7d9.js" crossorigin="anonymous"></script>
</head>
    <body>
    	<header class="container-fluid">
    		<section class="row">
	    		<h1 class="h1 text-center col">Simulacion 04</h1>
    		</section>
    		<!-- Navegación -->
    		<section class="row justify-content-center">
				<ul class="nav nav-pills justify-content-center">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/listado">Listado de
							Reservas</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="${pageContext.request.contextPath}/reserva">Reserva de
							horas Médicas</a></li>
				</ul>
			</section>			
    	</header>
	<main class="container">
		<section class="row justify-content-center mt-3">
			<form class="col-6" action="">
				<div class="form-group row">
					<label for="nombre"  class="col-sm-4 col-form-label">Nombre Paciente</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="nombre">
					</div>
				</div>
				<div class="form-group row">
					<label for="apellido"  class="col-sm-4 col-form-label">Nombre Apellido</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="apellido">
					</div>
				</div>
				<div class="form-group row">
					<label for="rutPaciente"  class="col-sm-4 col-form-label">Rut Paciente</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="rutPaciente">
					</div>
				</div>
				<div class="form-group row">
					<label for="especialidad"  class="col-sm-4 col-form-label">Especialidad</label>
					<div class="col-sm-6">
						<select for="especialidad" class="form-control">
							<option></option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<label for="doctor"  class="col-sm-4 col-form-label">Doctor(a)</label>
					<div class="col-sm-6">
						<select for="doctor" class="form-control">
							<option></option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<label for="fecha"  class="col-sm-4 col-form-label">Fecha</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="fecha" readonly="readonly">
					</div>
					<div class="col-sm-1">
						<span style="color: Dodgerblue;">
							<i class="far fa-calendar-alt fa-2x"></i>
						</span>
					</div>
				</div>
				<div class="form-group row">
					<label for="hora"  class="col-sm-4 col-form-label">Hora</label>
					<div class="col-sm-6">
						<input type="time" class="form-control" id="hora">
					</div>
					<div class="col-sm-1">
						
					</div>
				</div>
			</form>
		</section>
    </main>
		<!-- BOOTSTRAP JAVASCRIPT -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
			integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
			crossorigin="anonymous"></script>
	</body>
</html>
