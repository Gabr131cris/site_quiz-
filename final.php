<?php 

session_start();

?>

<html>
<head>
	<title>Simulare matematica grila</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

        <h1>Trimite rezultatul</h1>
  
        <form action="insert.php" method="post">
              
              
<p>
                <label for="firstName">First Name:</label>
                <input type="text" name="first_name" id="firstName">
            </p>
  
  
  
              
              
<p>
                <label for="lastName">Last Name:</label>
                <input type="text" name="last_name" id="lastName">
            </p>
			
  
  
  
 
              
            <input type="submit" value="Submit">
        </form>
   
	<header>
		<div class="container">
			<p>Simulare matematica grila</p>
		</div>
	</header>

	<main>
			<div class="container">
				<h2>Rezultatul tau:</h2>
				<p>Felicitari ai terminat testul.</p>
				<p>Rezultatul <strong>tau</strong> este <?php echo $_SESSION['score']; ?>  </p>
				<?php unset($_SESSION['score']); ?>
				
			</div>
			

	</main>


	








</body>
</html>