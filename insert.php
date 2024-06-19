<!DOCTYPE html>
<html>

<head>
	<title>Insert Page page</title>
</head>

<body>
	<center>
		<?php

		$conn = mysqli_connect("localhost", "root", "", "quiz");
		
		// Check connection
		if($conn === false){
			
		}
		
		
		$first_name = $_REQUEST['fname'];
		$last_name = $_REQUEST['lname'];
        $last_name = $_REQUEST['score'];

	
		$sql = "INSERT INTO note VALUES ('$first_name','$last_name','$score')";
		
		if(mysqli_query($conn, $sql)){
			echo "<h3>data stored in a database successfully."
				. " Please browse your localhost php my admin"
				. " to view the updated data</h3>";

			echo nl2br("\n$first_name\n $last_name\n "
				. "$gender\n $address\n $email");
		} else{
			echo "ERROR: Hush! Sorry $sql. "
				. mysqli_error($conn);
		}
		
		// Close connection
		mysqli_close($conn);
		?>
	</center>
</body>

</html>
