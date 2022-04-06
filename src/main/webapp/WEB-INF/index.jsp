<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<title>Read Share</title>
</head>
<body>
	<div class="container">
		<h1 class="letraAzul">Save Travels</h1>
		<table class="table table-striped table-bordered">
			<thead class="table-secondary">
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="gasto" items="${gastos}">
					<tr>
						<td><a href="/expenses/${gasto.getId()}"><c:out value="${gasto.getName()}"/></a></td>
						<td><c:out value="${gasto.getVendor()}"/></td>
						<td><c:out value="${gasto.getAmount()}"/></td>
						<td>
							<div class="d-flex align-items-center justify-content-evenly">
								<a href="/expenses/edit/${gasto.getId()}">edit</a>
								<form action="/delete/${gasto.getId()}" method="POST">
									<input type="hidden" name="_method" value="Delete">
									<button type="submit" class="btn btn-danger">delete</button>
								</form>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="d-flex justify-content-center">
					<div class="formualrio">
						<h2 class=letraAzul>Add an exponse:</h2>
						<form:form action="/create" method="post" modelAttribute="gasto">
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
			</div>
		</div>
	</div>
</body>
</html>