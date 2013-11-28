<header class="navbar navbar-static-top">
	<div class="navbar-inner">
		<div class="container">
			<div class="nav-collapse" style="float: right; margin-right: 20px;">
				<ul class="nav" style="font-size: 14px">	
					<?php if($username != ""){ ?>
						<li><a href="javascript:return false;"><?php echo $username; ?></a></li>
					<li id="logout"><a href="javascript:return false;">退出</a></li>
					<?php }else{ ?>
						<li id="login"><a href="javascript:return false;">登陆</a></li>
					<li id="register"><a href="javascript:return false;">注册</a></li>
					<?php } ?>
						
					</ul>
			</div>
			<h1>
				<a href="contest.list.php"><?php echo $title?></a>
			</h1>
			<div style="clear: both;"></div>
			<div class="nav-collapse">
				<ul class="nav nav-tabs" style="font-size: 14px">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> Dropdown<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<!-- links -->
						</ul></li>
					<?php
					$i = 0;
					foreach ( $status_description as $s => $d ) {
						echo "<li id='li_a_href_$i'><a href='$s'>$d</a></li> ";
						$i ++;
					}
					?>
					
					</ul>
			</div>


		</div>
	</div>
</header>
<script>
$(function(){
	$("#li_a_href_<?php echo $status; ?>").addClass("active");
});
		
</script>