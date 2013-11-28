<?php
session_start ();
$title = "vatirk 的训练基地";
include_once ('inc/init.php');
include_once ('inc/header.inc.php');
$username = "";
if ($_SESSION ['username'] != '') {
	$username = $_SESSION ['username'];
	$user_id = $_SESSION ['user_id'];
}
?>

<div class="container">
	<?php include_once('inc/index.top.php'); ?>
	<?php include_once('inc/index.body.php'); ?>
</div>
<script>
$(function(){
	$("#li_a_href_<?php echo $status_contest_home; ?>").addClass("active");
});
</script>
<?php
include_once ('inc/footer.inc.php');
include_once ('inc/end.php');
?>

