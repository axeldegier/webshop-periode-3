<?php require 'config/connect.php';
session_start();

?>



<!DOCTYPE html>
<html>
<title>Webshop</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="assets/css/home.css">
<body>

<?php
$sql = "SELECT * FROM product";
$result = $con->query($sql);
while ($row = $result->fetch_assoc()) {
    $id = $row['id'];
    $img = $con->query("SELECT image FROM product_image WHERE product_id='$id'")->fetch_assoc()["image"];
?>	

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">

  <?php
  if (!empty($_SESSION['username'])) {
        echo $_SESSION['username'];
        echo "<a id='logoutbutton' href='view/logout.php'>log out</a>";
    
    } else { 
      echo "<a href='index.php'>
      Login</a>";
      
    }
?>

  
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#projects" class="w3-bar-item w3-button">Producten</a>
      <a href="#about" class="w3-bar-item w3-button">About</a>
      <a href="#contact" class="w3-bar-item w3-button">Contact</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  </div>
</header>
<br><br>
<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">


	  
      <h3 class="title"><a href="#"><?php echo $row['name']; ?></a></h3>
      <p class="w3-opacity"><span class="price">€<?php echo $row['price']; ?></span></p>
      <p><img class="pic-1" src="<?php echo $img;  ?>"style="width:200px" height="width:100px"></p>
      <p><button class="w3-button w3-light-grey w3-block" style="width:200px"> Bestellen </button></p>

  </div>
  <?php } ?>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contact</h3>
    <p>Lets get in touch and talk about your next project.
    
    </p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND MESSAGE
      </button>
    </form>
  </div>
  
<!-- Image of location/map -->
<div class="w3-container">
</div>

<!-- End page content -->
</div>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p></p>
</footer>

</body>
</html>

