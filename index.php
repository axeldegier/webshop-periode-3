<?php
include("config/connect.php");
include("src/login.php");

if(!empty($_POST)){
    $chlogin = logIn();
}
?>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/registratie.css">
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
				<h3>Admin Login</h3>
			</ul>
		</nav>
    </header>
<main>
		
		<article>
        <div class="col-md-6 col-sm-12">
                <div class="login-form">
                   <form method="post" action="<?= BASEHREF;?>">
                      <div class="form-group">
                         
                         <input type="text" class="form-control" name="field_username" placeholder="username">
                      </div>
                      <div class="form-group">
                        
                         <input type="password" class="form-control" name="field_password" placeholder="Password">
                      </div>
                      <button type="submit" name="submit" class="btn btn-black">Login</button>
                      
                      <button href="<?= BASEHREF; ?>view/register.php" class="btn btn-secondary">Registreer</button>    
                   </form>
                </div>
            </div>
		</article>
		
	</section>
</main>
	<footer>
		<p>Copyright 2020 Axel de Gier</p>
	</footer>
    
    
</body>
</html>
