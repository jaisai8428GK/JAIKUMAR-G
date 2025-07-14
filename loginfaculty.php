<?php
session_start();
if(!empty($_SESSION['loginid']))
{
header('Location: hello.php');
}
?>
<html>
	<head>
	
	</head>
	
	<body>
		<form action="login1faculty.php" method="post">
			<h1 align="center">FACULTY LOGIN FORM</h1>
			<table align="Center">
				<tr>
					<td>Registration id:</td>
						<td><input type="text" name="id" id="id" required />
						</td>
				</tr>
				<tr>
					<td>password:</td>
						<td><input type="password" name="password" id="password" required />
						</td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" id="Login">
					</td>
				</tr>
			</table>
	</body>
<html>