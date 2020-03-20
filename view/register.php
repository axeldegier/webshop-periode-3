<?php require "../config/connect.php";
	  include "../src/register.php";

	//   dd($_POST);
	if(!empty($_POST)) {
		$sfd = setFormData();
	}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/registratie.css">
    <style>
     label {
       width: 100px;
       display: inline-block;
     }
    </style>
</head>
<body>
<header>
		<nav>
			<ul>
				<h3>Login</h3>
			</ul>
		</nav>
    </header>
<main>
		
		<article>

		<h1> Admin Login	</h1>
			<form method="post">
     
     <input type="text" name="field_firstname" id="fname" placeholder="Voornaam" required />
     <input type="password" name="field_password" id="passwd" placeholder="Wachtwoord" required /><br>
     <button type="submit" name="submit" value="Registreren">Registreren</button>
    </form>
		</article>
		
	</section>
</main>
	<footer>
		<p>Copyright 2020 Axel de Gier</p>
	</footer>
    
    
</body>
</html>
