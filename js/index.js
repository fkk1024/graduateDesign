//主页js文件
window.onload = function() {
	var name=sessionStorage.getItem(name);
	console.log(name);
}
$(window).resize(function() {
	console.log(document.body.scrollTop);
})
$(window).scroll(function() {
	var scroll = document.body.scrollTop;
	console.log(scroll);
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