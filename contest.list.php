<?php
session_start ();
$title = "vatirk 的比赛";
include_once ('inc/init.php');
include_once ('inc/header.inc.php');
include_once ('inc/contest.list.function.php');
$username = "";
$user_id = 0;
if (isset($_SESSION["username"]) && $_SESSION ['username'] != '') {
    $username = $_SESSION ['username'];
    $user_id = $_SESSION ['user_id'];
}
$end_but_can_add = 0;
include_once ('inc/contest.list.header.php');
?>
<div class="container">
    <?php include_once('inc/contest.list.top.php'); ?>
    <table
        class="table table-striped table-bordered table-hover table-condensed tablesorter"
        style="word-break: break-all;">
        <thead>
            <tr>
                <th>OJ</th>
                <th class="span5">比赛标题</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>比赛时长</th>
<?php if ($username != "") {echo "<th>是否报名</th>"; } ?>
              <th>解题报告</th>
            </tr>
        </thead>
        <tbody>
<?php
$result = mysql_query ( $sql, $conn );

while ( $result && $row = mysql_fetch_array ( $result ) ) {
    $row_id = $row ['id'];
    $row_oj = $row ['oj'];
    $row_name = $row ['name'];
    $row_link = $row ['link'];
    $row_start_time = $row ['start_time'];
    $row_duration = $row ['duration'];

    $accept = isAccept ( $user_id, $row_id, $username );
    $class = getShowColor ( $now_time, $row_start_time, $row_duration, $accept );

    echo "<tr data-id='$row_id' id='contestant_$row_id' class='$class'>";
    echo "<td>$row_oj</td>";
    echo "<td><a href='$row_link' target='_blank'>$row_name</a></td>";
    echo "<td class='date_time'>$row_start_time</td>";
    echo "<td class='date_time'>" . ($row_start_time + $row_duration) . "</td>";
    echo "<td class='duration'>$row_duration</td>";

    if ($username != "") {
        if ($status != $status_contest_end && $status != $status_mycontest_end || $end_but_can_add) {
            echo "<td ><div id='status_" . $row ['id'] . "' data-id='" . $row ['id'] . "' data-status='" . $accept . "' data-feedback='$user_id' class='status'></div></td>
                ";
        } else {
            if ($accept) {
                echo "<td ><button class='btn btn-success'>已报名</button></td>";
            } else {
                echo "<td ><button class='btn btn-danger'> 未报名</button></td>";
            }
        }
    }

    echo "<td ><a href='contest.summary.php?contestid=" . $row ['id'] . "'>解题报告</a></td>";
    echo " </tr>";
}

?>
        </tbody>
    </table>
    <ul class="pager">
        <li class="previous <?php if($start_page <= 0){echo "disabled";}  ?>" >
            <a
            href="?status=<?php echo $status;?>&start_page=<?php echo ($start_page-1); ?>">&larr;
                previous</a>
        </li>
        <li
            class="next <?php if($start_page >= $page_count){echo "disabled";}  ?>">
            <a
            href="?status=<?php echo $status;?>&start_page=<?php echo ($start_page+1); ?>">next
                &rarr;</a>
        </li>
    </ul>
</div>
<script charset="utf-8" src="js/contest-list.js"></script>
<?php include_once('inc/footer.inc.php'); ?>
<?php include_once('inc/end.php'); ?>
