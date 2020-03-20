<?php
session_start();
function logInn(){
    global $con;

    // data base connecten
    //inloggen
    //checken of user in de database staat

    
    if(isset($_POST['submit'])){


    
if(isset($_POST['field_username']) && trim($_POST['field_username'])
!== ''){
    echo 'Voornaam is OK <br>';
$username = $con->real_escape_string($_POST['field_username']);

    }else{
        echo "voornaam is verplicht";
    }

    if(isset($_POST['field_password']) && trim($_POST['field_password'])
!== ''){
    echo 'wachtwoord is OK <br>';
$password2 = $con->real_escape_string($_POST['field_password']);

    }else{
        echo "wachtwoord is verplicht";
    }

    

        $qry = $con->query("SELECT username,user_password FROM `user` WHERE username = '{$username}';");
    if($qry === false){   
        echo mysqli_error($con)." - ";
        exit(__LINE__);
    } else {
        if($qry->num_rows == 1){
            while ($admin = $qry->fetch_assoc()){
                if (password_verify($password2, $admin['user_password'])) {     
                    $_SESSION['username'] = $admin['username'];
                        
                        // echo "Name = " . $_SESSION["username"] . ".";
                        header('Location:home.php');
                } else {     
                    // Invalid credentials  
                    echo "WTF IS ER MIS DAN";
                }
            }
        }else{
            echo "gebruiker bestaat niet"; 
        }
    }
    $qry->close();
}
}

?>