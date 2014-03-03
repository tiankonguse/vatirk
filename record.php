<?php
session_start();
$title = "vatirk 的记录集";
include_once('inc/init.php');
include_once('inc/header.inc.php');
$username = "";
if($_SESSION['username'] != ''){
	$username = $_SESSION['username'];
	$user_id = $_SESSION['user_id'];
}
$blogtitle = $_GET['blogtitle'];

?>

<div class="container">
	<?php include_once('inc/index.top.php'); ?>
	<div id="article">
		<?php 
	include_once('inc/index.body.php'); 
		?>
	</div>
</div>
	<script>
		$(function(){
			$("#li_a_href_<?php echo $status_contest_record; ?>").addClass("active");
		<?php 
            if(preg_match('/^[a-zA-Z0-9_-]+$/',$blogtitle)){
		?>
			$.get("record/<?php echo $blogtitle;?>.html",function(d){
				$("#article").html(d);
			});
		<?php
			}
		?>

		});
		
	</script>
<?php 
	include_once('inc/footer.inc.php'); 
	include_once('inc/end.php');
?>

