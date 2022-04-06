<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<title>Show Expense</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h1 class="letraAzul">Expense Details</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div>
			<div class="mb-3 row">
    			<p class="col-sm-2 col-form-label">Expense Name:</p>
	    		<div class="col-sm-10">
	      			<p class="form-control-plaintext"><c:out value="${name}" /></p>
	    		</div>
  			</div>
  			<div class="mb-3 row">
    			<p class="col-sm-2 col-form-label">Expense Description:</p>
	    		<div class="col-sm-10">
	      			<p class="form-control-plaintext"><c:out value="${description}" /></p>
	    		</div>
  			</div>	
  			<div class="mb-3 row">
    			<p class="col-sm-2 col-form-label">Vendor:</p>
	    		<div class="col-sm-10">
	      			<p class="form-control-plaintext"><c:out value="${vendor}" /></p>
	    		</div>
  			</div>
  			<div class="mb-3 row">
    			<p class="col-sm-2 col-form-label">Amount Spent:</p>
	    		<div class="col-sm-10">
	      			<p class="form-control-plaintext"><c:out value="${amount}" /></p>
	    		</div>
  			</div>	
		</div>
	</div>
</body>
</html>