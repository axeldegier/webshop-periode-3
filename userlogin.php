<?php
include("config/connect.php");
include("src/ulogin.php");

if(!empty($_POST)){
    $chlogin = logInn();
}
?>
<!-- 

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>CMS Webshop</title>
    </head>
    <body>
        <div class="sidenav">
            <div class="login-main-text">
                <h2>Eigen Webshop<br> Login Page</h2>
                <p>Dit is een eigen CMS voor de webshop</p>
            </div>
        </div>
        <div class="main">
            
        </div>
       
    </body>
    </html>

 -->

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
				<h3>Login</h3>
			</ul>
		</nav>
    </header>
<main>
		
		<article>
        <div class="col-md-6 col-sm-12">
                <div class="login-form">
                   <form method="post" action="<?= BASEHREF;?>userlogin.php">
                      <div class="form-group">
                         
                         <input type="text" class="form-control" name="field_username" placeholder="username">
                      </div>
                      <div class="form-group">
                         
                         <input type="password" class="form-control" name="field_password" placeholder="Password">
                      </div>
                      <button type="submit" name="submit" class="btn btn-black">Login</button>
                      <button href="<?= BASEHREF; ?>view/uregister.php" class="btn btn-secondary">Registreer</button>
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