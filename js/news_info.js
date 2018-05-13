(()=>{
    var pageCount=0,
        tp=parseInt(location.search.slice(-1)),
        $newsHd=$("#news_hd"),
        $bread_nav=$(".head-route span"),
        isWhat="",
        pno=1;
    $newsHd.find(".on").removeClass("on");
    switch(tp){
        case 1:
            isWhat="isHot";
            loadNewsData("isHot",20,1);
            $newsHd.children().first().addClass("on");
            $bread_nav.html("热门");
            break;
        case 2:
            isWhat="isNews";
            loadNewsData("isNews",20,1);
            $newsHd.children(":nth-child(2)").addClass("on");
            $bread_nav.html("新闻");
            break;
        case 3:
            isWhat="isNotice";
            loadNewsData("isNotice",20,1);
            $newsHd.children(":nth-child(3)").addClass("on");
            $bread_nav.html("公告");
            break;
        case 4:
            isWhat="isActivity";
            loadNewsData("isActivity",20,1);
            $newsHd.children().last().addClass("on");
            $bread_nav.html("活动");
            break;
        default:
            $newsHd.children().first().addClass("on");
            $bread_nav.html("热门");
            break;
    }
    $newsHd.on("click","a",function(){
        switch($(this).html()){
            case "热门":
                location.search="?tp=1";
                break;
            case "新闻":
                location.search="?tp=2";
                break;
            case "公告":
                location.search="?tp=3";
                break;
            case "活动":
                location.search="?tp=4";
                break;
            default:
                location.search="?tp=1";
                break;
        }
    });
    if(!tp) loadNewsData("isHot",20,1);
    //发送请求加载数据的函数
    function loadNewsData(isWhat,newsNum,pno){
        var html="";
        $.ajax({
            method:"GET",
            url:"data/news_info/news_info.php?",
            data:{isWhat:isWhat,pageSize:newsNum,pno:pno},
            success:function(data){
                // console.log(data);
                var news=data.data;
                for(var i=0;i<news.length;i++) {
                    var date = new Date(parseInt(news[i].date)),
                        year = date.getFullYear(),
                        month = ("00" + (date.getMonth() + 1)).slice(-2),
                        day = ("00" + date.getDate()).slice(-2);
                    html += `
                        <li>
                            <a target="_blank" class="f2 f-info" href="${news[i].url}">${news[i].title}</a>
                            <span class="date">${year}-${month}-${day}</span>
                        </li>
                     `;
                }
                $("[data-toggle=loadNews]").html(html);

                var count=data.count,pageSize=parseInt(data.pageSize);
                pageCount=Math.ceil(count/pageSize);
                // console.log("总页数:"+pageCount);
                if(pageCount>1&&pno<pageCount){
                    $(".btn_content")
                        .children().last().addClass("dis")
                }
            }
        });
    }

    var $bc=$(".btn_content");
    $bc.on("click","a",function(e){
        var $tar=$(e.target);
        if($tar.html()=="下一页"&&pno<pageCount){
                pno++;
                $tar.prev().addClass("dis");
                loadNewsData(isWhat,20,pno);
        }else if($tar.html()=="上一页"&&pno>1){
                pno--;
                loadNewsData(isWhat,20,pno);
        }
        // console.log(pno);
        if(pno==1) $(".up").removeClass("dis");
        else if(pno==pageCount) {
            $bc.find(".down").removeClass("dis");
            console.log( $(".down"));
        }
    });
})();







