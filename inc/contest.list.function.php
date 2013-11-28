<?php
function isAccept($user_id, $contest_id, $username) {
	global $conn;
	if ($username == "") {
		return 0;
	}
	$sql = "select * from vatirk_contest_user where contest_id = '$contest_id' and user_id = '$user_id'";
	$result = @mysql_query ( $sql, $conn );
	if ($result && mysql_num_rows ( $result ) > 0) {
		return 1;
	}
	return 0;
}

function getShowColor($now_time, $start_time, $duration, $accept) {
	if ($accept == 1) {
		return "contest_do";
	}
	
	$class = "info";
	if ($now_time >= $start_time + $duration) {
		$class = "contest_end";
	} else if ($now_time >= $start_time) {
		$class = "error";
	}
	return $class;
}

?>