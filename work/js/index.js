$(function () {
        $(".blog-hover").hover(function () {
                $(this).css("background-color", "black")
                $(this).children("span").css("display", "block");
                $(this).children("img").fadeTo(400, 0.6)
        },
                function () {
                        $(this).children("span").css("display", "none");
                        $(this).children("img").fadeTo(400, 1)
                });
        $("div.media").hover(function(){
                $(this).children(".lineto").stop().animate({
                        width: "650px",
                },3000)
        },function(){
                $(this).children(".lineto").stop().animate({
                        width: "0px",
                },1500)
        })
        $("div.rank-body").hover(function(){
                $(this).find("img").stop().animate({
                        width:"110px",
                        height:"80px"
                },250)
        },
        function(){
                $(this).find("img").stop().animate({
                        width:"100px",
                        height:"70px"
                },250)
        })
        $(function() {
                $(".btn-toggle").click(function(){
                    $(".dropdown-menu").slideToggle();
                })
            })
})