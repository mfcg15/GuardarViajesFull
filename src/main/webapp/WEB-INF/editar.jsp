<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<title>Edit My Task</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h1 class="letraVerde">Edit Expense</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div>
			<form:form action="/updated/${gasto.id}" method="post" modelAttribute="gasto">
				<input type="hidden" name="_method" value="put">
				
				<div class="mb-3 row">
    				<form:label path="name" cssClass="col-sm-2 col-form-label">Expense Name:</form:label>
						<div class="col-sm-10">
							<form:input path="name" cssClass="form-control"/>
						</div>
						<form:errors path="name" cssClass="alerta"/>
  				</div>
				<div class="mb-3 row">
    				<form:label path="vendor" cssClass="col-sm-2 col-form-label">Vendor:</form:label>
					<div class="col-sm-10">
						<form:input path="vendor" cssClass="form-control"/>
					</div>
					<form:errors path="vendor" cssClass="alerta"/>
  				</div>
  				<div class="mb-3 row">
    				<form:label path="amount" cssClass="col-sm-2 col-form-label">Amount:</form:label>
					<div class="col-sm-10">
						<form:input path="amount" cssClass="form-control"/>
					</div>
					<form:errors path="amount" cssClass="alerta"/>
  				</div>
  				<div class="mb-3 row">
    				<form:label path="description" cssClass="col-sm-2 col-form-label">Description:</form:label>
					<div class="col-sm-10">
						<form:textarea path="description" cssClass="form-control"/>
					</div>
					<form:errors path="description" cssClass="alerta"/>
  				</div>
  				<div class="mb-3 row">
  					<div class="end">
  					<input type="submit" value="Submit" class="btn boton">
  					</div>
  				</div> 							
			</form:form>					
		</div>
	</div>
</body>
</html>