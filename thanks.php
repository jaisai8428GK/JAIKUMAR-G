<?php
	define('HOST','localhost');
	define('USERNAME', 'root');
	define('PASSWORD','');
	
	$con = mysqli_connect(HOST,USERNAME,PASSWORD);
	if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
	}
	mysqli_select_db($con,"internalmarks")or die( "<p><span style=\"color: red;\">Unable to select database</span></p>");
	$id = $_POST['id'];
	$name = $_POST['name'];
	$dept = $_POST['dept'];
	$year = $_POST['year'];
	$password = $_POST['password']; 
	$sql = "INSERT INTO `regdusers` (`id`, `name`, `dept`, `year`, `password`) VALUES
			('$id', '$name', '$dept', '$year', '$password')";
	if(mysqli_query($con,$sql)) { 
		echo 'registration success';
		echo "<html> 
			<body align='center'>
			<h1 align='center'>Thanks for Registering.We appreciate you</h1>
			<a class='btn btn-success btn-block btn-md' href='index.html'>back to home</a>
			</body>
			</html>";
	}
	else
	{
		echo "<p align='center'>Already registered</p>"."<p align='center'>Registration unsuccessful</p>";
	//	die(mysqli_error($con));
	//	echo "<h5 align='center'>Registration unsuccessful</h5>";
	}
	mysqli_close($con);
?>