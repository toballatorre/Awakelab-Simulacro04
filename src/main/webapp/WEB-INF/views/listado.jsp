<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
</head>
    <body>
    	<header class="container-fluid">
    	
	    		<h1 class="h1 text-center">Simulacion 04</h1>

			<!-- Navegación -->
			<section class="row">
				<ul class="nav nav-pills col-6 m-auto">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="${pageContext.request.contextPath}/listado">Listado de
							Reservas</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/reserva">Reserva de
							horas Médicas</a></li>
				</ul>
			</section>
	</header>
    	<main class="container">
    		<!-- Listado de las Agendas -->
			<section class="row">
				<div class="table-responsive">
					<table class="table table-sm table-striped table-hover">
						<thead class="thead-light text-center">
							<tr>
								<th scope="col">Paciente</th>
								<th scope="col">Doctor(a)</th>
								<th scope="col">Especialidad</th>
								<th scope="col">Fecha</th>
								<th scope="col">Hora</th>
								<th scope="col">Acción</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listaAgenda}" var="agenda">
								<tr>
									<td scope="row">
										<p>${agenda.getPaciente().getNombre()} ${agenda.getPaciente().getApellido()}
										<br>${agenda.getPaciente().getRutPaciente()}</p>
									</td>
									<td>
										${agenda.getDoctor().getNombre()} ${agenda.getDoctor().getApellido()}
									</td>
									<td>
										${agenda.getDoctor().getEspecialidad().getDescripcion()}
									</td>
									<td>
									<fmt:parseDate value="${agenda.getFecha()}" pattern="yyyy-MM-dd" var="parsedDate" type="date"/>
									<fmt:formatDate type = "date" value = "${parsedDate}" />
									</td>
									<td>
										${agenda.getHoraDesde()}
									</td>
									<td>
										<div class="nav">
											<a class="nav-link" href="${pageContext.request.contextPath}/editar/${agenda.getId()}">Editar</a>
											<a class="nav-link" href="${pageContext.request.contextPath}/eliminar/${agenda.getId()}">Eliminar</a>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
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
