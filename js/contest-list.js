
String.prototype.xss=function(){
	return this.replace(/<script>.*?<\/script>/g,'')
	.replace(/"/g, '&quot;')
	.replace(/'/g, '&#39;')
	.replace(/</g, '&lt;')
	.replace(/>/g, '&gt;')
	.replace(/\r?\n/g, '<br/>');
};

Date.prototype.ojFormat=function(){
	function _(i){return i<10?"0"+i:""+i;}
	return this.getFullYear()+"-"+_(this.getMonth()+1)+"-"+_(this.getDate())+" "+_(this.getHours())+":"+_(this.getMinutes())+":"+_(this.getSeconds());
};

$("table").tablesorter({sortLocaleCompare:true});

$("th").attr("style","cursor:pointer;");

$(".date_time").each(function(){
	var d = new Date($(this).text()*1000);
	$(this).text(d.ojFormat());
});

$(".duration").each(function(){
	var time_len = $(this).text();
	var output = "";
	var oneday = 24*60*60;
	if(time_len >= oneday){
		output += parseInt(time_len/oneday)+"天";
		time_len = time_len % oneday;
	}
	
	var h = parseInt(time_len/3600);
	if(h < 10){
		h = "0" + h;
	}
	
	output += h+":";
	time_len = time_len % 3600;

	var m = parseInt(time_len/60);
	if(m < 10){
		m = "0" + m;
	}
	
	output += m + ":";
	time_len = time_len % 60;

	var s = parseInt(time_len);
	if(s < 10){
		s = "0" + s;
	}
	output += s;
	
	$(this).text(output);
});

$(".status").each(function(){
        var $this = $(this);
        var id = $this.attr("data-id");
        var status = $this.attr("data-status");
        var feedback = $this.attr("data-feedback");
        $this.html(statusHtml(id,status,feedback));
});

function statusHtml(id, status, feedback){
        var s = new Array(2);
        s[status] = 'active';
        return "<div class='btn-group' data-toggle='buttons-radio'><button class='btn "+s[0]+"' onclick='setStatus("+id+",0,"+feedback+");'>不报名</button><button class='btn "+s[1]+"' onclick='setStatus("+id+",1,"+feedback+");'>已报名</button>";
}

function setStatus(id,status, feedback){
	$.post("inc/contest_status_update.php",{
		contest_id:id,
		status:status,
		user_id:feedback
	},function(d){
		if(d.code == 0){
			showMessage(d.message);
		}else{
			showMessage(d.message);
		}
	},"json");
}





