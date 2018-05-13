//mirror部分的动态交互
(()=>{
    //获取鼠标相对于窗口的坐标
    var el=$(".header")[0],
        mirr=$(".mirr img")[0],
        startX=parseInt(getComputedStyle(el).width),
        startY=parseInt(getComputedStyle(el).height)-150;
    $("body")[0].onmousemove=function(e){
        var movetoX=e.clientX;
        var movetoY=e.clientY;
        //设置移动距离
        var x=-(movetoX-startX)/15;
        var y=-(movetoY-startY)/15;
        mirr.style.top=y+"px";
        mirr.style.left=x+"px";
    };
})();
// 新闻资讯部分的轮播图（Jquery）
(()=>{
    var bannerImgs=$("[data-toggle=bannerImgs]"),
        bannerInds=$("[data-toggle=bannerInds]");
    var n=0,LIWIDTH=525,TRANS=300,INTERVAL=2000,timer=null;

    $.ajax({
        method:"GET",
        url:"data/homepage/news_carousel.php"
    })
        .then(data=>{
            data=data.reverse();
            var strInds="";
            for(var img of data){
                strInds+=`<li title="${img.title}"></li>`
            }

            var banners=data;
            banners.push(data[0]);
            // console.log(banners);
            var strImgs="";
            for(var img of banners){
                strImgs+=`
                    <li>
                        <a href="#" title="${img.title}">
                            <img src="${img.src}">
                        </a>
                    </li>
                `;
            };

            bannerImgs.html(strImgs);
            bannerImgs.css("width",LIWIDTH*banners.length+"px");
            bannerInds.html(strInds);
            bannerInds.children().eq(0).addClass("on");
        })
        .then(()=>{
            function moveOnce(){
                n++;
                bannerImgs.css("left",-n*LIWIDTH+"px");
                bannerInds.children().eq(n-1).removeClass("on");
                if(n==bannerImgs.children().length-1){
                    bannerInds.children().eq(0).addClass("on");
                    setTimeout(()=>{
                        bannerImgs.css({"transition":"","left":0});
                        n=0;
                        setTimeout(()=>{
                            bannerImgs.css("transition","all ."+TRANS/100+"s linear");
                        },100);
                    },TRANS);
                }
                else bannerInds.children().eq(n).addClass("on");
            }
            bannerImgs.css("transition","all ."+TRANS/100+"s linear");
            timer=setInterval(moveOnce,INTERVAL+TRANS);
        })
        .then((moveOnce)=>{
            bannerImgs.parent().mouseover(function(){
                clearInterval(timer);
                timer=null;
            });
            bannerImgs.parent().mouseout(function(){
                timer=setInterval(moveOnce,INTERVAL+TRANS);
            });
            for(let i=0;i<bannerInds.children().length;i++){
                bannerInds.children().eq(i).mouseover(function(){
                    n=i;
                    bannerImgs.css("left",-n*LIWIDTH+"px");
                    bannerInds.find(".on").removeClass("on");
                    bannerInds.children().eq(i).addClass("on");
                })
            }
        })
})();
//news部分；
(()=>{
    $("#news_hd").on("mouseover","a",function(){
        var $tar=$(this);
        $tar.parent().parent().find(".on").removeClass("on");
        $tar.parent().addClass("on");
        var $ul=$("[data-toggle="+$tar.attr("link_bd")+"]");

        $ul.removeClass("dis");
        $ul.siblings().removeClass("dis");
        $ul.addClass("dis");
    });
    loadNewsData("[data-toggle=hot]","isHot",5,"热门");
    loadNewsData("[data-toggle=news]","isNews",5,"新闻");
    loadNewsData("[data-toggle=notice]","isNotice",5,"活动");
    loadNewsData("[data-toggle=activity]","isActivity",5,"公告");
    //发送请求加载数据的函数
    function loadNewsData(newsPos,isWhat,newsNum,newsType){
        var html="";
         $.ajax({
             method:"GET",
             url:"data/news_info/news_info.php?",
             data:{isWhat:isWhat,pageSize:newsNum}
            })
             .then((data)=>{
                 // console.log(data);
                 var news=data.data;
                 for(var i=0;i<newsNum;i++) {
                     var date = new Date(parseInt(news[i].date)),
                         year = date.getFullYear(),
                         month = ("00" + (date.getMonth() + 1)).slice(-2),
                         day = ("00" + date.getDate()).slice(-2);
                     html += `
                        <li>
                            <a target="_blank" class="f1 type" href="news_info.html">[${newsType}]</a>
                            <a target="_blank" class="f2 f-info" href="${news[i].url}">${news[i].title}</a>
                            <span class="date">${month}/${day}</span>
                        </li>
                     `;
                 }
                 $(newsPos).html(html);
             })
    }
})();
//游戏特色部分轮播 (纯js)
(()=>{
    var bannerImgs=$("[data-toggle=trImgs]")[0],
        bannerInds=$("[data-toggle=trInds]")[0];
    var n=0,LIWIDTH=1200,TRANS=300,INTERVAL=2000,timer=null;

    $.ajax({
        method:"GET",
        url:"data/homepage/game_ts.php"
    })
        .then(data=>{
            var banners=data;
            banners.push(data[0]);
            var strImgs="";
            for(var img of banners){
                strImgs+=`
                    <li>
                        <a href="${img.href}">
                            <img src="${img.src}">
                        </a>
                    </li>
                `;
            };
            var strInds="<span></span>".repeat(banners.length-1);
            bannerImgs.innerHTML=strImgs;
            bannerImgs.style.width=LIWIDTH*banners.length+"px";
            bannerInds.innerHTML=strInds;
            bannerInds.children[0].className="on";
            return new Promise(resolve=>resolve());
        })
        .then(()=>{
            function moveOnce(){
                n++;
                bannerImgs.style.left=-n*LIWIDTH+"px";
                bannerInds.children[n-1].className="";
                if(n==bannerImgs.children.length-1){
                    bannerInds.children[0].className="on";
                    setTimeout(()=>{
                        bannerImgs.style.transition="";
                        bannerImgs.style.left=0;
                        n=0;
                        setTimeout(()=>{
                            bannerImgs.style.transition="all ."+TRANS/100+"s linear";
                        },100);
                    },TRANS);
                }
                else bannerInds.children[n].className="on";
            }
            bannerImgs.style.transition="all ."+TRANS/100+"s linear";
            timer=setInterval(moveOnce,INTERVAL+TRANS);

            return new Promise(resolve=>resolve(moveOnce));
        })
        .then((moveOnce)=>{
            bannerImgs.parentNode.onmouseover=function(){
                clearInterval(timer);
                timer=null;
            };
            bannerImgs.parentNode.onmouseout=function(){
                timer=setInterval(moveOnce,INTERVAL+TRANS);
            };
            for(let i=0;i<bannerInds.children.length;i++){
                bannerInds.children[i].onclick=function(){
                    n=i;
                    bannerImgs.style.left=-n*LIWIDTH+"px";
                    bannerInds.find(".on")[0].className="";
                    bannerInds.children[i].className="on";
                }
            }
        })
})();
//通关攻略部分的切换
(()=>{
    $("#gl_header").on("mouseover","a",function(e){
        var $tar=$(e.target);
        $tar.parent().parent().find(".on").removeClass("on");
        $tar.parent().addClass("on");
        $(".tab_pannel").removeClass("dis");
        if($tar.html()=="少女级S通关"){
            $("#maid").addClass("dis");
        }else{
            $("#princess").addClass("dis");
        }
    })
})();
//文字溢出隐藏显示...
(()=>{
    function ctrlText(textPosn,len){
        var spans=document.querySelectorAll(textPosn);
        for(var i=0;i<spans.length;i++){
            spans[i].innerHTML=spans[i].innerHTML.substr(0,len)+"..."
        }
    }
    ctrlText("[data-toggle=textCtrl]",12);
})();
//樱花飘落效果
$.fn.Cherry_Blossoms=function(params){
    return this.each(function () {
        //设置默认值
        var defaults={
            ele:'.cherry',//切换对象
            is_Cherry:true,//是否生成樱花
            image_min:20,//花瓣最小宽度和高度
            image_max:60,//花瓣最大宽度和高度
            time_min:10000,//花瓣最快下坠时间
            time_max:40000,//花瓣最慢下坠时间
            interval:500//花瓣生成时间间隔
        };
        var par = $.extend({}, defaults, params);
        function randomNum(minNum, maxNum) {
            switch (arguments.length) {
                case 1:
                    return parseInt(Math.random() * minNum + 1, 10);
                    break;
                case 2:
                    return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
                    break;
                default:
                    return 0;
                    break;
            }
        }
        if(par.is_Cherry) {
            setInterval(function () {
                var time;
                var cherrySize;
                var margin_left;
                margin_left = randomNum(5, 100);
                time = randomNum(par.time_min, par.time_max);
                cherrySize = randomNum(par.image_min, par.image_max);
                $('#myCherry:last-child').after('<img id="myCherry" src="image/cherry.png" alt="">');
                $('#myCherry:last-child').css({
                    'margin-left': margin_left + '%',
                    'width': cherrySize + 'px',
                    'height': cherrySize + 'px'
                });
                $('#myCherry:last-child').animate({
                        left: -25 + '%',
                        top: 100 + '%',
                        deg: -540
                    },
                    {
                        step: function (deg) {
                            // console.log(deg);
                            $(this).css({"transform": "rotate3d(1,.2,0," + deg + "deg)"});
                        },
                        duration:time
                    }, time);
                setTimeout(function () {
                    $('#myCherry:first-child').remove();
                }, time-5000);
            }, par.interval);
        }
    })
};
//楼层导航
(()=>{
    //网页内容部分
    var $sliderBar=$(".sliderBar");
    var mainConts=[...$("body").children()].slice(3,-4);// console.log(mainConts);
    //获取楼层标签距离完整html页面顶部的距离
    function getOffsetTop(elem){
        var offsetTop=elem.offsetTop;
        while(elem.offsetParent){ //距离最近的已定位的父元素。对有父元素的情况的处理，在这里用不上，只用于学习理解
            elem=elem.offsetParent;
            offsetTop+=elem.offsetTop;
        }
        return offsetTop;
    }
    var DIST=0,DURA=500,STEPS=100,
        moved=0,step=0,interval=DURA/STEPS,
        timer=null;
    function moveTo(i){
        if(i=="moveToTop"){
            DIST=-document.body.scrollTop;
        }else{
            DIST = getOffsetTop(mainConts[i])-document.body.scrollTop;
            if(i==0)    DIST-=100;
        }
            if(timer!=null) {
                clearInterval(timer);
                timer = null;
                moved = 0;
            }
            step=DIST/STEPS;
            timer=setInterval(moveStep,interval);
    }
    function moveStep(){
        moved++;
        window.scrollBy(0,step);
        if(moved==STEPS){
            clearInterval(timer);
            timer=null;
            moved=0;
            checkOn();
        }
    }
    function checkOn(){
        var scrollTop=document.body.scrollTop;
        for(var i=0;i<mainConts.length;i++){
            var CHEIGHT=parseFloat(getComputedStyle(mainConts[i]).height);
            var change=(scrollTop>=getOffsetTop(mainConts[i])-innerHeight/2
                &&scrollTop<getOffsetTop(mainConts[i])+CHEIGHT-innerHeight/2);
            if(change){
                $sliderBar.children().children().eq(i).addClass("current");
            }else{
                $sliderBar.children().children().eq(i).removeClass("current");
            }
        }
    }
    window.onscroll=function(){
        checkOn();
    };
    //导航部分内容切换
    var slider=$sliderBar.children().children();
        for(let i=0;i<slider.length-1;i++){
            slider.eq(i).click(()=>{
                moveTo(i);
            });
        }
    slider.last()
        .click(function(){
            moveTo("moveToTop");
        });
})();
