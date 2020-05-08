$(function(){
	let i = 0;
	let times;
    let run = function(){
        i++;
		if(i==5){
			i=0
		}
		$(".img li").eq(i).fadeIn(1000).siblings("li").fadeOut(500);
		$(".point li").eq(i).css("backgroundColor","gray").siblings("li").css("backgroundColor","white")
	};
	$(".point li").click(function(){
		i = $(this).attr("id").split("-")[1]-1;
		console.log($(this).text())
		$(".img li").eq(i).fadeIn(250).siblings("li").fadeOut(250);
		$(".point li").eq(i).css("backgroundColor","gray").siblings("li").css("backgroundColor","white")
	})
	$(".left-arrow").click(function(){
		i = i-1;
		if(i<0){
			i=4;
		}
		console.log(i)
		$(".img li").eq(i).fadeIn(250).siblings("li").fadeOut(250);
		$(".point li").eq(i).css("backgroundColor","gray").siblings("li").css("backgroundColor","white")
	})
	$(".right-arrow").click(function(){
		i = i+1;
		if(i>4){
			i=0;
		}
		console.log(i)
		$(".img li").eq(i).fadeIn(250).siblings("li").fadeOut(250);
		$(".point li").eq(i).css("backgroundColor","gray").siblings("li").css("backgroundColor","white")
	})
	times = setInterval(run, 2000)
	$(".round").hover(function(){
		clearInterval(times);
	},
	function(){
		times = setInterval(run, 2000);
	});
})