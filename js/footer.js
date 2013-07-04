$(document).ready(function(){
	var update_contest = function(){
		$.post("inc/update_contest.php",function(){
			setTimeout(update_contest,4000);
		});
	};
	update_contest();
});

function showMessage(message,cb,now){
	$message = $("#message");
	$message.find(".modal-body>p").text(message);
	$message.modal("show");
	$message.on("hide",cb);
	if(now > 0){
		setTimeout(cb,now);
	}
	setTimeout(function(){$message.modal('hide');},5000);
}


$("#register").click(function(){
	$("#register_email").val("");
	$("#register_username").val("");
	$("#register_realname").val("");
	$("#register_password1").val("");
	$("#register_password2").val("");
	$('#register_form').modal();
	return false;
});

$("form.register").submit(function(){
	var $username  = $("#register_username").val();
	var $email     = $("#register_email").val();
	var $realname  = $("#register_realname").val();
	var $password1 = $("#register_password1").val();
	var $password2 = $("#register_password2").val();
	
	if(!$email || !$password1 || !$password2 || !$username || !$realname){
		showMessage("你有空缺的表单项目没有完成！");
		return false;
	}
	// return false;
	if($password1 != $password2){
		showMessage("输入的两次密码不同");
		return false;
	}
	
	$.post("inc/register.php",{
		username:$username,
		realname:$realname,
		email:$email,
		password1:$password1,
		password2:$password2
	},function(d){
		if(d.code==0){
			$('#register_form').modal('hide');
			showMessage(d.message);
		}else{
			showMessage(d.message);
		}
	},"json");
	
	return false;
});

$("#login").click(function(){
	$("#login_username").val("");
	$("#login_password").val("");
	$('#login_form').modal();
	return false;
});

$("form.login").submit(function(){
	var $username = $("#login_username").val();
	var $password = $("#login_password").val();
	console.log("--");
	if($username == "" || $password == ""){
		showMessage("你有空缺的表单项目没有完成！");
	}else{
		$.post("inc/login.php",{
			username:$username,
			password:$password
		},function(d){
			if(d.code==0){
				$('#login_form').modal('hide');
				showMessage(d.message,function(){window.location = "";},4000);
			}else{
				showMessage(d.message);
			}
		},"json");
	}
	
	return false;
});

$("#logout").click(function(){
	$.post("inc/logout.php",function(d){
		if(d.code==0){
			showMessage(d.message,function(){window.location = "";},4000);
		}else{
			showMessage(d.message);
		}
	},"json");
	return false;
});







