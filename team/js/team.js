//一楼控制器
$(".c_g .ul_list").click(function(e) {
	//	changeclass();
	e.preventDefault();
	var ind=$(this).index();
	$(".ul_list a").removeClass("act");
	$(".c_g .ul_list").eq(ind).children().addClass("act");
	$(".s_g >.row").removeClass("dis_block");
	$(".s_g >.row").eq(ind).addClass("dis_block");
});
//二楼控制器
$(".c_g1 .ul_list1").click(function(e) {
	//	changeclass();
	e.preventDefault();
	var ind=$(this).index();
	$(".ul_list1 a").removeClass("act");
	$(".c_g1 .ul_list1").eq(ind).children().addClass("act");
	$(".s_g1 >.row").removeClass("dis_block");
	$(".s_g1 >.row").eq(ind).addClass("dis_block");
});
//三楼控制器
$(".c_g2 .ul_list2").click(function(e) {
	//	changeclass();
	e.preventDefault();
	var ind=$(this).index();
	$(".ul_list2 a").removeClass("act");
	$(".c_g2 .ul_list2").eq(ind).children().addClass("act");
	$(".s_g2 >.row").removeClass("dis_block");
	$(".s_g2 >.row").eq(ind).addClass("dis_block");
});
$(".c-img").mouseover(function(){
	$(".ljyt").css({
		"height":"100%"
	});
	$(".ljyt_img").css({
		"top":"30%",
		"opacity":"1"
	})
})
$(".c-img").mouseout(function(){
	$(".ljyt").css({
		"height":"0"
	});
	$(".ljyt_img").css({
		"top":"0%",
		"opacity":"0"
	})
})
//中间图
$(".c-img1").mouseover(function(){
	$(".ljyt1").css({
		"height":"100%"
	});
	$(".ljyt_img1").css({
		"top":"30%",
		"opacity":"1"
	})
})
$(".c-img1").mouseout(function(){
	$(".ljyt1").css({
		"height":"0"
	});
	$(".ljyt_img1").css({
		"top":"0%",
		"opacity":"0"
	})
})
//右边上面
$(".c-img2").mouseover(function(){
	$(".ljyt2").css({
		"height":"92%"
	});
	$(".ljyt_img2").css({
		"top":"20%",
		"opacity":"1"
	})
})
$(".c-img2").mouseout(function(){
	$(".ljyt2").css({
		"height":"0"
	});
	$(".ljyt_img2").css({
		"top":"0%",
		"opacity":"0"
	})
})
//右边下面
$(".c-img3").mouseover(function(){
	$(".ljyt3").css({
		"height":"100%"
	});
	$(".ljyt_img3").css({
		"top":"20%",
		"opacity":"1"
	})
})
$(".c-img3").mouseout(function(){
	$(".ljyt3").css({
		"height":"0"
	});
	$(".ljyt_img3").css({
		"top":"0%",
		"opacity":"0"
	})
})

