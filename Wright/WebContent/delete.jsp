<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delete</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">


<script>

<%String errorMsg = (String) session.getAttribute("message");%>

var errMsg="<%=errorMsg%>";

<%session.removeAttribute("message");%>
	function displayError() {
		
		if (errMsg != null && errMsg == "S") {
			alert("Enddated Sucessfully!");
			return false;		
		}
			
		if (errMsg != null && errMsg == "F") {
			alert("Username already exists!");
			return false;
		}
		
	}
		
		function deleteDetails() {
			
			document.forms[0].submit();
		}	


</script>


</head>
<body onload="displayError()">

	<aside class="call-to-action bg-primary">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Wright Stay is the perfect place to search your housing!</h2>
				<p class="lead">This site features some wonderful places around
					the campus.</p>
			</div>
		</div>
	</div>
	</aside>

	<br>
	<br>

	<center>
		<h2>Delete a House or User</h2>
		<hr class="small">
	</center>

	<center>

		<html:form action="/delete" focus="houseId">
			<table align="center">
				<tr>
					<td><p class="lead">House ID : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="houseId" id="houseId" name="houseId" />
						</p></td>
				</tr>
<br>
				<tr>
					<td> <center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					or</center><br></td>
				</tr>
<br>
				<tr>
					<td><p class="lead">User ID : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="userId" id="userId" name="userId" />
						</p></td>
				</tr>

			</table>

			<br>

			<table>
				<tr align="center">
					<td><input type="button" value="Delete"
						class="btn btn-dark btn-lg" onclick="deleteDetails()" /></td>
						
				<td>
						<input type="button" value="Back" 
onclick="window.location='AdminMenu.jsp'" class="btn btn-dark btn-lg"  />
						
				</td>
				</tr>

			</table>

		</html:form>
	</center>


	<%@ include file="footer.jsp"%>


</body>
</html>