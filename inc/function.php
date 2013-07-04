<?php

function update($state){
	global $conn;
	// $state = 7;
	if($state == 1){
		
		if(update_acmicpc()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>icpc<br/>";
		}
	}else if($state == 2){
		
		if(update_zju()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>zju<br/>";
		}
	}else if($state == 3){
		
		if(update_nenu()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>nenu<br/>";
		}
	}else if($state == 4){
		if(update_hust()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>hust<br/>";
		}
	}else if($state == 5){
		if(update_upc()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>upc<br/>";
		}
	}else if($state == 6){
		if(update_neu()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>upc<br/>";
		}
	}else if($state == 7){
		if(update_hdu_diy()){
			$sql = "UPDATE `contest_update_time` SET `time`='".time()."' WHERE `state` = '$state'";
			$result = mysql_query($sql ,$conn);
			echo "<br/>hdu-diy<br/>";
		}
	}
}

function update_hdu_diy(){
	global $conn;
	//get html
	$url = "http://acm.hdu.edu.cn/diy/";
	$html = file_get_html($url.'contest_list.php');
	//get hot game list
	
	$table = $html->find("#maintable",0);
	
	//echo "------$table\n";
	
	foreach($table->find("tr") as $tr){
		//echo "....$tr\n";
		$Status = $tr->find("td",4)->plaintext;
		
		//Start@2013-05-16 18:00:00
		if(strcmp("Public",$Status) == 0){
			$cid = $tr->find("td",0)->plaintext;
			$a = $tr->find("td a",0);
			$link = $url.$a->href;
			$oj   = "HDU";
			$name = $a->plaintext;
			$start_time = gettime($tr->find("td",2)->plaintext);
			$end_time   = gettime($tr->find("td",3)->plaintext);
			$duration  = $end_time - $start_time;
	
			echo "-->$oj $name $start_time $duration $link $cid\n<br/>";
			 save($oj, $name, $start_time, $link,$duration,$cid);
			
		}
	}
	return true;
}

function update_neu(){
	global $conn;
	//get html
	$url = "http://acm.neu.edu.cn/hustoj/";
	$html = file_get_html($url.'contest.php');
	//get hot game list
	
	$table = $html->find("#main table",0);
	foreach($table->find("tr[class!='toprow']") as $tr){
		
		$Status = $tr->find("td",2)->plaintext;

		//Start@2013-05-16 18:00:00
		if(preg_match('/开始于@/',$Status)){
			$cid = $tr->find("td",0)->plaintext;
			$a = $tr->find("td a",0);
			$link = $url.$a->href;
			$oj   = "NEU";
			$name = $a->plaintext;
			preg_match("/([0-9]{2,4}-[0-9]{1,2}-[0-9]{1,2}\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2})/", $Status,$fl_array);
			//print_r($fl_array);
			$start_time = gettime($fl_array[1]);
			//echo "\n";
	
			if(preg_match("/总赛时([0-9]{1,})天/", $Status,$fl_array)){
				$duration = $fl_array[1] * 24 * 60 * 60;
			}else{
				$duration = 5 * 60 * 60;
			}
			
			echo "-->$oj $name $start_time $duration $link\n<br/>";
			save($oj, $name, $start_time, $link,$duration,$cid);
			
		}else{
			break;
		}
	}
	return true;
}


function update_upc(){
	global $conn;
	//get html
	$url = "http://acm.upc.edu.cn/";
	$html = file_get_html($url.'contest.php');
	//get hot game list
	
	$table = $html->find("#main table",0);
	foreach($table->find("tr[class!='toprow']") as $tr){
		$cid = $tr->find("td",0)->plaintext;
		$Status = $tr->find("td",2)->plaintext;

		//Start@2013-05-16 18:00:00
		if(preg_match('/Start@/',$Status)){
			$a = $tr->find("td a",0);
			$link = $url.$a->href;
			$oj   = "UPC";
			$name = $a->plaintext;
			preg_match("/([0-9]{2,4}-[0-9]{1,2}-[0-9]{1,2}\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2})/", $Status,$fl_array);
			//print_r($fl_array);
			$start_time = gettime($fl_array[1]);
			//echo "\n";
			preg_match("/Total(5)小时/", $Status,$fl_array);
			if(count ($fl_array) == 0){
				$fl_array[1] = 5;
			}
			$duration = $fl_array[1] * 60 * 60;
			
			echo "-->$oj $name $start_time $duration $link\n<br/>";
			save($oj, $name, $start_time, $link,$duration,$cid);
			
		}else if(preg_match('/Finished@/',$Status)){
			$a = $tr->find("td a",0);
			$link = $url.$a->href;
			$oj   = "UPC";
			$name = $a->plaintext;
			preg_match("/([0-9]{2,4}-[0-9]{1,2}-[0-9]{1,2}\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2})/", $Status,$fl_array);
			//print_r($fl_array);
			$start_time = gettime($fl_array[1]);

			$duration = 5 * 60 * 60;
			$start_time -= $duration;
			
			echo "-->$oj $name $start_time $duration $link\n<br/>";
			save($oj, $name, $start_time, $link,$duration,$cid);
		}else{
			break;
		}
	}
	return true;
}

function update_hust(){
	global $conn;
	//get json data
	$json = file_get_html('http://acm.hust.edu.cn/vjudge/contest/listContest.action?s=true&r=true&e=false&contestType=0&iDisplayStart=0&iDisplayLength=100');

	if($json){
		$contest_objs = json_decode($json,true);
		$contest_objs = $contest_objs["aaData"];
		
		foreach ($contest_objs as $contest_obj){
			$link = "http://acm.hust.edu.cn/vjudge/contest/view.action?cid=".$contest_obj[0]."#overview";
			$oj = "hust";
			$cid = $contest_obj[0];
			$name = $contest_obj[1];
			$start_time = $contest_obj[2]/1000;
			$duration = getduration($contest_obj[3]);
			 save($oj, $name, $start_time, $link, $duration,$cid);
			echo "$oj $name $start_time $duration $link ".$contest_obj[3]."<br/>";
		}
		return true;
	}else{
		return false;
	}	
}

function update_nenu(){
	global $conn;
	//get json data
	$json = file_get_html('http://acm.nenu.edu.cn/judge/contest/listContest.action?s=true&r=true&iDisplayStart=0&iDisplayLength=100');
	//{"iTotalDisplayRecords":1,"iTotalRecords":70,"sColumns":null,"aaData":[[71,"二分图练习",1367726400000,"30天0:00:00","Public","winguse",3,0,"Running"]]}
	//get hot game list
	if($json){
		$contest_objs = json_decode($json,true);
		$contest_objs = $contest_objs["aaData"];
		
		foreach ($contest_objs as $contest_obj){
			$link = "http://acm.nenu.edu.cn/judge/contest/view.action?cid=".$contest_obj[0]."#overview";
			$oj = "nenu";
			$cid = $contest_obj[0];
			$name = $contest_obj[1];
			$start_time = $contest_obj[2]/1000;
			$duration = getduration($contest_obj[3]);
			 save($oj, $name, $start_time, $link, $duration,$cid);
			echo "$oj $name $start_time $duration $link ".$contest_obj[3]."<br/>";
		}
		return true;
	}else{
		return false;
	}
}

function update_zju(){
	global $conn;
	//get html data
	$html = file_get_html('http://acm.zju.edu.cn/onlinejudge/showContests.do');
	//get hot game list
	$table = $html->find('table.list',0);
	foreach($table->find("tr[class!='rowHeader']") as $tr){
		$Status = $tr->find("td[class='contestStatus'] a font",0)->plaintext;
		if($Status != ""){
		//http://acm.zju.edu.cn/onlinejudge/showContestProblems.do?contestId=347
			$link = "http://acm.zju.edu.cn".$tr->find("td[class='contestName'] a",0)->href;
			preg_match("/contestId=([0-9]+)/", $link,$fl_array);
			$cid = $fl_array[1];
			// $cid = 
			$oj   = "ZJU";
			$name = $tr->find("td[class='contestName'] a font",0)->plaintext;
			$start_time   = substr($Status,0,19);
			$start_time = gettime($start_time);
			$duration = "18000";
			echo "$oj $name $start_time $duration $link $cid<br/>";
			save($oj, $name, $start_time, $link,$duration,$cid);
			
		}else{
			break;
		}
	}
	return true;
	
}

function update_acmicpc(){
	return true;
	$json  = file_get_contents("http://contests.acmicpc.info/contests.json");
	if($json){
		$contest_objs = json_decode($json,true);
		foreach ($contest_objs as $contest_obj){
			$link = $contest_obj['link'];
			
			$oj = $contest_obj['oj'];
			if(
				strcmp($oj,"ZJU") == 0 || 
				strcmp($oj,"nenu") == 0 ||
				strcmp($oj,"hust") == 0 ||
				strcmp($oj,"UPC") == 0 ||
				strcmp($oj,"NEU") == 0 ||
				strcmp($oj,"HDU") == 0 
				
			){
				continue;
			}
			$name = $contest_obj['name'];
			$start_time = $contest_obj['start_time'];
			$start_time = gettime($start_time);
			save($oj, $name, $start_time, $link,18000,0);
			echo "$oj $start_time<br/>";
		}
		return true;
	}else{
		return false;
	}
}

function save($oj, $name, $start_time, $link, $duration, $cid){
	global $conn;
	
	$link = mysql_real_escape_string($link);
	$oj = mysql_real_escape_string($oj);
	$name = mysql_real_escape_string($name);
	$start_time = mysql_real_escape_string($start_time);
	$cid = mysql_real_escape_string($cid);
	
	$sql = "select * from contest where  oj = '$oj' and  cid = '$cid'";
	$result = mysql_query($sql ,$conn);
	
	//echo "$sql\n";
	
	if($result && mysql_num_rows($result) > 0){
		$row=mysql_fetch_array($result);
		if($duration != $row['duration']){
			$sql = "update `contest` SET `duration` = '$duration' where id = '".$row['id']."'";
			mysql_query($sql ,$conn);
		}
	}else{
		$sql = "insert into contest (name, link, oj, start_time, duration, cid) values('$name','$link','$oj','$start_time','$duration','$cid')";
		$result = mysql_query($sql ,$conn);
	}
}

function getduration($duration){
//3天5:00:00
	$start_time =0;
	if(preg_match('/^[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}$/',$duration)){
	//y-m-d h:m:s
	echo "h:m:s<br/>";
		sscanf($duration,"%d:%d:%d",$hour, $minute, $second);
		$start_time = $hour * 3600 + $minute * 60 + $second;
	}else if(preg_match('/[0-9]{1,4}天[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}/',$duration)){
	//y-m-d h:m:s
		
		sscanf($duration,"%d天%d:%d:%d",$day, $hour, $minute, $second);
		$start_time = $day* 3600*24 + $hour * 3600 + $minute * 60 + $second;
		// echo "--d天h:m:s $start_time<br/> ";
	}
	return $start_time;
}

function gettime($start_time){
	if(preg_match('/^[0-9]{2,4}-[0-9]{1,2}-[0-9]{1,2}\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}/',$start_time)){
	//y-m-d h:m:s
		sscanf($start_time,"%d-%d-%d %d:%d:%d",$year, $month, $day, $hour, $minute, $second);
		$start_time = mktime($hour, $minute, $second ,$month ,$day, $year);
	}
	
	return $start_time;
}


?>