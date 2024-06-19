<?php 
include 'db.php';
$query = "SELECT * FROM questions";
$total_questions = mysqli_num_rows(mysqli_query($connection,$query));


?>
<html>
<head>
	<title>Simulare matematica grila</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<header>
		<div class="container">
			<p>Simulare matematica grila</p>
		</div>
	</header>

	<main>
			<div class="container">
				<h2>Simulare matematica grila</h2>
				
				<ul>
					<li><strong>Numarul de intrebari:</strong><?php echo $total_questions; ?> </li>
					<li><strong>Tip::</strong> Grila</li>
					<li><strong>Timp estimativ:</strong> <?php echo $total_questions*1.5; ?></li>

				</ul>

				<a href="question.php?n=1" class="start">Start chestionar</a>

			</div>

	</main>


	
