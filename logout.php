<?php
session_start();
unset($_SESSION['username']);
unset($_SESSION['email']);
unset($_SESSION['lev']);
header('Location:login.php');

?>