<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <link rel="stylesheet" href="form.css">
    <base href="<%=basePath%>">
    
    <title>My JSP 'addemp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<form action="addEmployee" method="post" >
	<table align="center">
<tr><td><h1>Employee Form</h1><br></br></td></tr>

		<tr><td>Name:<input type="text" name="user" pattern="[A-Za-z]{4,12}" placeholder="enter name"
			title="name must be between 4 and 12 charecters length and contains only letters and numbers"
			required><br> <br></td></tr>
		<tr><td>dob:<input type="date"
			name="dob" max="2000-12-31" min="1970-01-01"
			title="DOB should not be greater than 50 years of age with current date"
			required><br> <br></td></tr>
		 <tr><td>Qualification:<select
			name="qualification" required>
			<option value="" name="qualification">Select</option>
			<option value="B.Tech" name="qualification">btech</option>
			<option value="B.com" name="qualification">bcom</option>
			<option value="bsc" name="qualification">bsc</option>
			<option value="other" name="qualification">other</option>
			</select><br> <br></td></tr>
		 <tr><td>Gender: <input type="radio" id="male" name="gender"
			value="male" required>
			 <label for="male">Male</label></td></tr>
		<tr><td><input type="radio" id="female" name="gender" value="female" required>
		<label for="female">Female</label><br></br> 
		<tr><td><input type="radio" id="other" name="gender" value="other" required> <label  for="other">Other</label><br><br>
			</td></tr>
		<tr><td> Date of joining: <input
			type="date" min="1970-01-01" name="joiningdate"
			title="DOJ should not be less than 50 years of age with current date"
			required> <br><br></td></tr>
		<tr><td>Pancard :<input type="text" name="pancard" placeholder="enter pancard"
			pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" title="incorrect pan card number" required><br><br>	
					</td></tr>
	  	<tr><td>Salary :<input type="text" name="salary" placeholder="enter salary"
			pattern="[0-9]{1,20}" title="salary must be numeric" required><br><br></td></tr>
		<tr><td><input type="submit" value="submit"></td></tr>
</table>
	</form>

  </body>
</html>
