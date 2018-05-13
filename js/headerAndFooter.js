//动态加载页头页尾
(()=>{
    $.ajax({
        method:"GET",
        url:"header.html"
    })
        .then(html=>{
            $("#header").html(html);
            document.head.innerHTML=document.head.innerHTML+"<link rel='stylesheet' href='css/headerAndFooter.css'>"
        })
        .then(()=>{
            var url=window.location.href,
                checkUrl=url.slice(url.lastIndexOf("/")+1),
            $nav=$(".nav_list").find("a");
            $nav.each(function(){
                var $tar=$(this);
                var href=$tar.attr("href");
                if(checkUrl==href) $tar.addClass("on");
                    else $tar.removeClass("on");
            });
        });
    $.ajax({
        method:"GET",
        url:"footer.html"
    })
    .then(html=>{
          $("#footer").html(html);
     });
})();
