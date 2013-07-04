<?php
session_start();
require_once("../inc/init.php");
require_once("../inc/JSON.php");
require_once("manger.function.php");
$json = new Services_JSON();
echo $json->encode(getUserList());
require_once("../inc/end.php");
?>
