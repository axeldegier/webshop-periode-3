<?php



function setFormData2(){
//valideren van form data
//form data in database zetten
//checken of de data is opgeslagen
global $con,
        $_POST;
        $tussenvoegsel = $_POST['field_infixname'];
        $email = $_POST['field_email'];
        $password = $_POST['field_password'];
        $birthDate = $_POST['birthdate'];
        $lastName = $_POST['field_lastname'];

if(isset($_POST['field_firstname']) && trim($_POST['field_firstname'])
!== ''){
    echo 'Voornaam is OK <br>';
$firstName = $_POST['field_firstname'];

    }else{
        echo "voornaam is verplicht";
    }



// Keep track of validated values
$valid = array('field_firstname'=>false, 'field_infixname'=>false, 'field_lastname'=>false, 'field_email'=>false, 'field_password'=>false);
// Validate firstname

// Validate tussenvoegsel
if( !preg_match('/[^a-zA-Z\s]/', $tussenvoegsel) ) {
    $valid['field_infixname'] = true;
    $tussenvoegsel = $_POST['field_infixname'];
        echo 'Tussenvoegsel is OK! <br/>';
    }else{
        echo 'Tussenvoegsel can contain only letters!<br/>';
    }
    
// Validate lastname
if(isset($_POST['field_lastname']) && trim($_POST['field_lastname'])
!== ''){
    echo 'Achternaam is OK <br>';
$lastName = $_POST['field_lastname'];

    }else{
        echo "achternaam is verplicht";
    }
// Validate email
if( !empty($email) ) {
if( filter_var($email, FILTER_VALIDATE_EMAIL) ) {
$valid['field_email'] = true;
$email = $_POST['field_email'];
echo 'E-mail is OK!<br/>';
}else{
echo 'E-mail is invalid!<br/>';
}
}else{
echo 'E-mail cannot be blank!<br/>';
}
// Validate password
if( !empty($password) ) {
if( strlen($password) >= 5 && strlen($password) <= 32 ) {
$valid['field_password'] = true;
$password = $_POST['field_password'];

$hashed = password_hash($password, PASSWORD_BCRYPT, ["cost"=>8]);
echo 'Password is OK!<br/>';
}else{
echo 'Password must be between 5 and 32 characters!<br/>';
}
}else{
echo 'Passwordcannot be blank!<br/>';
}

$query1 = $con->prepare('INSERT INTO `user` (`username`,`birthDate`,`middleName`,`lastName`,`u_email`,`user_password`) VALUES (?,?,?,?,?,?);');
    if ($query1 === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
    }
    $query1->bind_param('ssssss', $firstName, $birthDate, $tussenvoegsel, $lastName, $email, $hashed);
    if ($query1->execute() === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
    } else {
        echo "Gebruiker toegevoegd";
        $query1->close();
        header('Location:uregister.php');
    }



}

?>