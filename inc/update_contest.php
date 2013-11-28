<?php
include_once ('init.php');
include_once ("simple_html_dom.php");
include_once ("function.php");

$sql = "select * from vatirk_contest_update_time ORDER BY  `time` ASC LIMIT 0 , 1";
$result = mysql_query ( $sql, $conn );

if ($result && mysql_num_rows ( $result ) > 0) {
	$row = mysql_fetch_array ( $result );
	$time = $row ['time'];
	$now_time = time ();
	
	if ($now_time >= $time) {
		echo "->" . $row ['state'] . "<br/>";
		update ( $row ['state'] );
	}
	echo "yes";
} else {
	echo "no";
}
include_once ('end.php');

?>