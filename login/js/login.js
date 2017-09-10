$('#bt_login').click(function(e) {
	//表单序列化
	var data = $('.login-form').serialize();
		e.preventDefault();	
	var uname=$(".u_name").val();
	$.ajax({
		type: "post",
		url: "php/3_login.php",
		async: true,
		data: data,
		success: function(data) {
			if(data=="1"){
				console.log(data);
				sessionStorage.setItem(name,$(".u_name").val());
				window.location.href='http://127.0.0.1/graduation_project/graduation/graduateDesign/index.html';
			}else if(data==0){
				$("#span_username").html("用户名或密码错误").css({
					"color":"red"
				})
			}
		},
		error: function(txt,msg,xhr) {
			console.log(msg);
			console.log($('.u_name').val());
			var u_name=$('.u_name').val();
			if(msg=="parsererror"&&u_name==''){
				$("#span_username").html("用户名不能为空").css({
					"color":"red"
				})
			}else if(msg=="parsererror"&&u_pwd==''){
				$("#span_username").html("密码不能为空").css({
					"color":"red"
				})
			}else if(msg=="parsererror"){
				$("#span_username").html("用户名密码不能为空").css({
					"color":"red"
				})
			}
		}
	});
	document.onkeydown=function(){
		$("#span_username").html('');
	}
});