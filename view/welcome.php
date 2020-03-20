<?php
session_start();
require("../config/connect.php");

echo "welcome". ' ' .$_SESSION['username']

?>