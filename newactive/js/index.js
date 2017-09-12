//异步请求页头页尾
//页面加载完成完成事件的回调
$(function() {
	$('div#footer').load('php-for-aliyun/foot.php');
});
//功能点1：瀑布流
//设置class为masonry的父元素成彩砖墙
//功能点2：显示模态框
$('#modal-login').modal({
	show: true
});
//功能点3：点击登录,请求数据库 实现页面跳转
$('#bt-login').click(function() {
	//表单序列化
	var data = $('#login-form').serialize();
	//发起异步请求
	$.ajax({
		type: "POST",
		url: "php-for-aliyun/login.php",
		data: data,
		success: function(txt, msg, xhr) {
			if(txt == '1') {
				$('.modal').modal('hide');
				$('.modal-backdrop').remove();
				var loginName = $('[name="uname"]').val();
				sessionStorage['loginName'] = loginName;
				$('#login').html(loginName + '的堆糖');
			} else if(txt = '0') {
				$("#errw").html("用户名或密码错误..")
					.css({
						"opacity": 1,
						"color": "#fff",
						"background": "#FA5A5A"
					});
			}
		}
	})
});
//功能点4：异步加载数据
var html = '';
function h(data) {
	$.each(data, function(i, d) {
		html += `
                	<div class="col-xs-12 col-sm-6 col-md-3 box">
	<div class="thumbnail">
		<div class="mbpho">
			<a href="#">
				<img src="${d.d_img}" alt="" class="mbpho-img">
				<!--收藏框-->
				<div class="collbtn">
					<a href="#" class="collection">
						<i></i>
						<em>收集 777</em>
					</a>
					<a href="#" class="btn btn-default discuss">
						<i></i>
					</a>
					<a href="#" class="btn btn-default favour">
						<i></i>
					</a>
				</div>
			</a>
		</div>
		<div class="caption">
			<div class="writing">
				${d.d_detil}
			</div>
			<!--收集-->
			<div class="fall-collect">
				<span class="collect1 pull-left">${d.select_1}</span>
				<span class="collect2 pull-left">${d.select_2}</span>
			</div>
			<ul class="ul-user">
				<li class="li-user">
					
					<p>
						<a href="#" class="people">
							${d.d_uname}
						</a>
						&nbsp;
						<br>
  
						<span style="font-weight: bold;">
                          收集到&nbsp;&nbsp;&nbsp;
                          <a href="#">♠ 一生所爱 ②~</a>
                        </span>
					</p>
				</li>
			</ul>
		</div>
	</div>
</div>`;
	});
	return html;
}

var d;
(function() {
	$.ajax({
		type: 'GET',
		url: 'php-for-aliyun/readmore.php',
		success: function(data, msg, xhr) {
			console.log(data);
			console.log(data[0]);
			var $m = $("#pubu");
			var dj=JSON.parse(data);
			console.log(dj);
			d = dj;
			h(d);
			$m.html(html);
			$m.imagesLoaded(function() {
				$m.masonry({
					itemSeletor: "#pubu > .box",
					isAnimated: true,
				});
			});
		}
	});
})();

//功能点5：点击加载更多请求数据库 加载后台数据
//闭包模块
var l = 1;
$('#readMore').click(
	function(e) {
		e.preventDefault();
		$.ajax({
			type: 'GET',
			url: 'php-for-aliyun/readmore.php',
			data: {
				sta: d.length * l
			},
			success: function(data, msg, xhr) {
				console.log(data[0])
				var dj=JSON.parse(data);///将返回数据解析成json格式
				var htm = h(dj);
				$("#pubu").html(html).imagesLoaded(function(){
					$("#pubu").masonry("reloadItems").masonry()
				});
				l += 1;
				if(data[0].length < 10) {
					$(".dt-browser")
						.html("没有更多数据了...")
						.css({
							"fontSize": "20px"
						});
				}

			}
		});
	});
