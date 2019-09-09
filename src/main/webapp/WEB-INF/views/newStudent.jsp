<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<title>Student Roster | New Student</title>
</head>
<body>
	<section class="add-form mt-5">
	
		<div class="d-flex justify-content-center align-items-center container">
			<div class="form-group row">
				<div class="col-sm-12">
					<h1>New Student</h1>
				</div>
			</div>
		</div>
			
		<div class="d-flex justify-content-center align-items-center container">
			<form:form class="form-horizontal" action="/addStudent" method="post" modelAttribute="student">
		
				<div class="form-group row">
					<label for="firstName" class="col-sm-4 col-form-label">First Name</label>
					<div class="col-sm-8">
						<form:input path="firstName" class="form-control" placeholder="First Name"/>
						<form:errors path="firstName" class="errors"/>
					</div>
				</div>

				<div class="form-group row">
					<label for=lastName class="col-sm-4 col-form-label">Last Name</label>
					<div class="col-sm-8">
						<form:input path="lastName" class="form-control" placeholder="Last Name"/>
						<form:errors path="lastName" class="errors"/>
					</div>
				</div>

				<div class="form-group row">
					<label for=age class="col-sm-4 col-form-label">Age</label>
					<div class="col-sm-8">
						<form:input path="age" class="form-control" placeholder="Age"/>
						<form:errors path="age" class="errors"/>
					</div>
				</div>

				<input id="singlebutton" class="btn btn-primary btn-sm btn-block" type="submit" value="Create"/>
	
			</form:form>
		</div>
	</section>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>