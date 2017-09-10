(function(){
	var t;
	clearInterval(t);
	setInterval(function(){
		var se=$(".se").html();
		console.log($(".m").html());
		se=Number(se);
		se--;
		$(".se").html(se);
		if(se<0){
		 var m=$(".m").html();
		 m=Number(m);
		 m--;
		 $(".m").html(m);
		$(".se").html(59);
		 
		}
	},1000)
})();
