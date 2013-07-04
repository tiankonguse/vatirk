<?php  
$status_description = array(
	"index.php" => "vatirk 的训练首页",
	"record.php" => "记录集",
	"contest.list.php" => "vatirk 的比赛",
	"contest.summary.php" => "解题报告",
	"contest.manger.php" => "后台管理"
);

$status_contest_home = 0;
$status_contest_record = 1;
$status_contest_list = 2;
$status_contest_summary = 3;
$status_contest_manger = 4;


?>
	<header class="navbar navbar-static-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="nav-collapse" style="float: right;margin-right:20px;">
					<ul class="nav" style="font-size: 14px">	
					<?php if($username != ""){ ?>
						<li ><a href="javascript:return false;"><?php echo $username; ?></a></li>
						<li id="logout"><a href="javascript:return false;">退出</a></li>
					<?php }else{ ?>
						<li id="login"><a href="javascript:return false;">登陆</a></li>
						<li id="register"><a href="javascript:return false;">注册</a></li>
					<?php } ?>
						
					</ul>
				</div>				
				<h1><a href="."><?php echo $title?></a></h1>
				<div class="nav-collapse">
					<ul class="nav nav-tabs" style="font-size: 14px">
					<?php 
						$i = 0;
						foreach($status_description as $s => $d){
							echo "<li id='li_a_href_$i'><a href='$s'>$d</a></li> ";
							$i++;
						}
					?>
					
					</ul>
				</div>
			</div>
		</div>
	</header>