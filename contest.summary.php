<?php
session_start();
$title = "vatirk 的比赛总结";
include_once('inc/init.php');
include_once('inc/header.inc.php');
$username = "";
if($_SESSION['username'] != ''){
	$username = $_SESSION['username'];
	$user_id = $_SESSION['user_id'];
}
$contestid = intval($_GET['contestid']);

$sql = "select * from contest where id = '$contestid'";
$result = mysql_query($sql ,$conn);
$contest_oj = "";
$contest_name = "";
$contest_link = "";
if($result && $row=mysql_fetch_array($result)) {
	$contest_oj = $row['oj'];
	$contest_name = $row['name'];
	$contest_link = $row['link'];
}
?>
<div class="container">
	<?php include_once('inc/index.top.php'); ?>
	<div class="page-header">
		<h3>
			<a href="<?php echo $contest_link; ?>">
				<?php echo $contest_name; ?>
			</a>
		</h3>
	</div>
	<table class="table table-striped table-bordered table-hover table-condensed tablesorter" style="word-break:break-all;">
		<thead>
			<tr>
				<th>ID</th>
				<th>title</th>
				<th>AC</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<button class="btn btn-large btn-block btn-success" type="button">增加我的解题报告</button>
	<table class="table table-striped table-bordered table-hover table-condensed tablesorter" style="word-break:break-all;">
		<thead>
			<tr>
				<th>username</th>
				<th>解题报告名称</th>
				<th>time</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
	<script>
		$(function(){
			$("#li_a_href_<?php echo $status_contest_summary; ?>").addClass("active");
		});
		
	</script>
<?php 
	include_once('inc/footer.inc.php'); 
	include_once('inc/end.php');
?>

