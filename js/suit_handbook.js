(()=>{
    //点击按钮将当前点击的序号写入session中（注意是覆盖原来的值）
    var $li=$(".clyList li"),
        SHEIGHT=390,
        pageSize=8,
        classId=1,
        pageCount=0,
        pno=1;
    var suitList=$(".suitList"),pageBtn=$(".pageBtn");
    loadSuits(pageSize,pno,classId);
    $li.click(function(){
        $tar=$(this);
        $(".head-route span").html($tar.children().children().attr("alt"));
        classId=$li.index(this)+1;
        $li.find(".on").removeClass("on");
        $tar.children().children().addClass("on");
        loadSuits(pageSize,1,classId)
    });

    pageBtn.on("click","a",function(e){
        $tar=$(e.target);
        if($tar.html()=="上一页"&&pno>1){
            pno--;
            loadSuits(pageSize,pno,classId)
        }else if($tar.html()=="下一页"&&pno<pageCount){
            pno++;
            loadSuits(pageSize,pno,classId)
        }
        if($tar.html()!="上一页"&&$tar.html()!="下一页"){
            pno=parseInt($tar.html());
            loadSuits(pageSize,pno,classId)
        }
    });


    function loadSuits(pageSize,pno,classId){
        $.get("data/suitHandbook/loadSuit.php",{pageSize,pno,classId},function(data){
            pageCount=data.pageCount;
            var suits=data.data,suitHtml="",btnHtml="";
            suitList.css("height",Math.ceil(suits.length/4)*SHEIGHT+"px");//设置ul的高度(排除footer的位置变化)
            for(var suit of suits){
                suitHtml+=`
                    <li>
                        <a href="${suit.detailHref}?detl=${suit.detailSrc}&suitName=${suit.suitName}">
                            <img src="${suit.src}" alt="">
                            <span>${suit.suitName}</span>
                        </a>
                    </li>
                `;
            }
            btnHtml+=`<a href="javascript:;">上一页</a>`;
            for(var i=0;i<pageCount;i++){
                btnHtml+=`<a href="javascript:;">${i+1}</a>`;
            }
            btnHtml+=`<a href="javascript:;">下一页</a>`;
            suitList.html(suitHtml);
            pageBtn.html(btnHtml)
        })
            .then(()=>{
                if(pno==1){
                    pageBtn.children().first().addClass("disabled");
                }
                if(pno==pageCount){
                    pageBtn.children().last().addClass("disabled");
                }
                pageBtn.find(".on").removeClass("on");
                pageBtn.children().eq(pno).addClass("on");
            })
    }
})();