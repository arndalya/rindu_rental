<?php
<<<<<<< Updated upstream
session_start(); 
$_SESSION = array();
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 60*60,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
=======
session_start();
$_SESSION = array();
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(),
        '',
        time() - 60 * 60,
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
>>>>>>> Stashed changes
    );
}
unset($_SESSION['login']);
session_destroy(); // destroy session
<<<<<<< Updated upstream
header("location:index.php"); 
?>

=======
header("location:../index.php");
>>>>>>> Stashed changes
