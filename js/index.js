//主页js文件
window.onload = function() {
	var name=sessionStorage.getItem(name);
}
// $(window).resize(function() {
// 	console.log(document.body.scrollTop);
// })
$(window).scroll(function() {
	var scroll = document.body.scrollTop;
	if(scroll > 600) {
		$("#goTop").css({
			"display":"block"
		})
	}else{
		$("#goTop").css({
			"display":"none"
		})
	}
})