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
	
	<title>Student Roster | New Contact Info</title>
</head>
<body>
	<section class="add-form mt-5">
	
		<div class="d-flex justify-content-center align-items-center container">
			<div class="form-group row">
				<div class="col-sm-12">
					<h1>Contact Info</h1>
				</div>
			</div>
		</div>
		
		<div class="d-flex justify-content-center align-items-center container">
			<form:form class="form-horizontal" action="/addcontactinfo" method="post" modelAttribute="contactInfo">
			
				<div class="form-group row">
					<label for=student class="col-sm-4 col-form-label">Students</label>
					<div class="col-sm-8">
						<form:select path="student" class="custom-select"> 
						  <c:forEach items="${students}" var="s">
						  	<form:option value="${s.id}">${s.firstName} ${s.lastName}</form:option>
						  </c:forEach>					
						</form:select>
						<form:errors path="student" class="errors"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label for=address class="col-sm-4 col-form-label">Address</label>
					<div class="col-sm-8">
						<form:input path="address" class="form-control" placeholder="Address"/>
						<form:errors path="address" class="errors"  />
					</div>
				</div>
				
				<div class="form-group row">
					<label for=city class="col-sm-4 col-form-label">City</label>
					<div class="col-sm-8">
						<form:input path="city" class="form-control" placeholder="City"/>
						<form:errors path="city" class="errors"  />
					</div>
				</div>
				
				<div class="form-group row">
					<label for=state class="col-sm-4 col-form-label">State</label>
					<div class="col-sm-8">
						<form:select path="state" class="custom-select">
						  	<option selected>Choose...</option>
						  	<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
						</form:select>
						<form:errors path="state" class="errors"  />
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