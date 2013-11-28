<?php
session_start();
$title = "vatirk 的后台管理";
include_once('inc/init.php');
include_once('inc/header.inc.php');
$username = "";
$manger_login  = 0;
$manger_logout = 1;
$manger_user   = 2;
$state = $manger_login;
$message = "";

$state = $_SESSION['state'];

if($_SESSION['username'] == 'admin'){
	$username = $_SESSION['username'];
	if($state == $manger_login){
		$state = $manger_user;
		$_SESSION['state'] = $state;
	}
}else{
	$state = $manger_login;
	$message = "这个页面需要管理员级别的账号，请重新登陆";
}



?>

<script>
var state = <?php echo  $state;?>;
</script>

<div class="container">
	<div class="page-header">
		<?php include_once('inc/index.top.php'); ?>
	</div>
	<div class="row">
		<div class="span3 bs-docs-sidebar">
			<ul class="nav nav-list bs-docs-sidenav affix-top">
				<?php if($state != $manger_login){ ?>
				<li class="manger_nav_user manger_nav_<?php echo $manger_user; ?>">
					<a href="">
						<i class="icon-chevron-right"></i> 用户管理
					</a>
				</li>
				<li class="manger_nav_logout manger_nav_<?php echo $manger_logout; ?>">
					<a href="">
						<i class="icon-chevron-right"></i> 退出
					</a>
				</li>
				<?php }else{ ?>
				<li class="manger_nav_login manger_nav_<?php echo $manger_login; ?>">
					<a href="">
						<i class="icon-chevron-right"></i> 登陆
					</a>
				</li>
				<?php } ?>
			</ul>
		</div>
		<div id="manger_right" class="span9">
		</div>
	</div>
	
</div>
<div class="height5"></div>
<script  charset="utf-8"  src="js/application.js"></script>
<script>
	$(function(){
		$("#li_a_href_<?php echo $status_contest_manger; ?>").addClass("active");
		$(".manger_nav_<?php echo $state; ?>").addClass("active");
	});
	$(document).ready(function(){
		load_ajax(state);
<?php 
if($message != ""){
	echo "$(function(){showMessage('$message');});";
}
 ?>
	});
</script>
<?php 
	include_once('inc/footer.inc.php'); 
	include_once('inc/end.php');
?>

