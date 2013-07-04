<?php
$status_description = array(
	"index.php" => "首页",
	"?status=1" => "最近比赛",
	"?status=2" => "进行中的比赛",
	"?status=3" => "hust 最近的比赛",
	"?status=4" => "未开始的比赛",
	"?status=5" => "结束的比赛",
	"?status=6" => "将参加的比赛",
	"?status=7" => "已参加的比赛",
	"contest.summary.php" => "解题报告"
);
$status_contest_home = 1;
$status_contest_runing = 2;
$status_contest_hust = 3;
$status_contest_not_begin = 4;
$status_contest_end = 5;
$status_contest_will_do = 6;
$status_mycontest_end = 7;

$status = intval($_GET['status']);

if($status < $status_contest_home || $status > $status_mycontest_end){
	$status = $status_contest_home;
}

$now_time = time();

$show_number = 30;
$start_page = intval($_GET['start_page']);
$start_pos = $start_page * $show_number;


$sql_array = array();
$sql_num = 0;
$sql_tmp = " ";

if($status == $status_contest_home  || $status == $status_contest_runing){
	$sql_tmp .= " and oj != 'hust' ";
}


$sql_head = "select * from contest";
$sql_end = "ORDER BY  `start_time` DESC  LIMIT $start_pos , $show_number";

$sql_array[$status_contest_home] = "$sql_head where start_time + duration >= '$now_time'";
$sql_num++;

$sql_array[$status_contest_runing] = "$sql_head where start_time + duration >= '$now_time' and start_time <= '$now_time'";
$sql_num++;

$sql_array[$status_contest_hust] = "$sql_head where start_time + duration >= '$now_time' and oj = 'hust'";
$sql_num++;

$sql_array[$status_contest_not_begin] = "$sql_head where start_time  > '$now_time'";
$sql_num++;

$sql_array[$status_contest_end] = "$sql_head where start_time + duration <= '$now_time'";
$sql_num++;


if($username != ""){
	$sql_array[$status_contest_will_do] = "$sql_head where start_time + duration >= '$now_time' and id in (select contest_id from contest_user where user_id = '$user_id')";
	$sql_num++;

	$sql_array[$status_mycontest_end] = "$sql_head where start_time + duration < '$now_time' and id in (select contest_id from contest_user where user_id = '$user_id')";
	$sql_num++;	
}

$sql = trim($sql_array[$status].$sql_tmp);

  // echo "$sql $status";

 if(strcmp($sql,"")!=0){
	$result = mysql_query($sql ,$conn);
	$page_count = intval((mysql_num_rows($result)-1)/$show_number);
	$sql .= $sql_end;
 } 
?>