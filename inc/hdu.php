<?php
include_once ('init.php');

$oj = "HDU";
$sql = "select * from vatirk_contest where  oj = '$oj'";
$result = mysql_query ( $sql, $conn );

while ( $row = mysql_fetch_array ( $result ) ) {
	$id = $row ['id'];
	preg_match ( "/cid=([0-9]+)/", $row ['link'], $fl_array );
	$cid = $fl_array [1];
	$sql = "select * from vatirk_contest where  oj = '$oj'";
	mysql_query ( "update `vatirk_contest` SET `cid` = '$cid' where `id` = '$id'", $conn );
	
	$sql = "select * from vatirk_contest where  oj = '$oj' and `cid` = '$cid' LIMIT 1 ,9999";
	$resultcid = mysql_query ( $sql, $conn );
	while ( $rowcid = mysql_fetch_array ( $resultcid ) ) {
		mysql_query ( "delete  from vatirk_contest where  id =  '" . $rowcid ['id'] . "'", $conn );
	}
}

include_once ('end.php');

?>
