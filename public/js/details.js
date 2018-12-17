$(function(){
    if(location.search.indexOf("lid=")!=-1){
      var lid=location.search.split("=")[1];
      //console.log(lid)
      (async function(){
        var res=await $.ajax({
          url:"http://localhost:3000/details",
          type:"get",
          data:{lid},
          dataType:"json"
        })

        var {product, pics, specs}=res;
        console.log(pics[0].a)
        console.log(product)
        
        var vm=new Vue({
          el:"#Details",
          data:{
            lid, product, pics, specs
          }
        }) 

        //查找小图片、中图片
        var divPrev=document.getElementById("ring_middle");
        var ul=divPrev.querySelector(
            "div.card-body>div.ring-small>div.middle>ul"
        );
        var delul=document.getElementById("details-cageray");
        var html1="";
        for(var pic of pics){
          //console.log(pics)
            var {sm,md,lg}=pic;
            html1+=`<li><img src="${sm}" data-md="${md}" data-lg="${lg}"></li>`
        }
        ul.innerHTML=html1;

        
        var mImg=divPrev.querySelector(
            "ul.ring-face>li>img"
        )
        //console.log(pics)
        mImg.src=pics[0].md; 
        var lgDiv=document.getElementById("div-lg");
        
        lgDiv.style.backgroundImage=`url(${pics[0].lg})`;
        //console.log(lgDiv.style.backgroundImage)
          //鼠标进入每个小图片，切换中图片和大图片
        ul.onmouseover=function(e){
          if(e.target.nodeName==="IMG"){
            var img=e.target;
            var md=img.dataset.md;
            var lg=img.dataset.lg;
            mImg.src=md;
            lgDiv.style.backgroundImage=`url(${lg})`;
          }
        }  
        var $mImg=$(mImg),//中图片
          $lgDiv=$(lgDiv),//大图片
          $mask=$("#mask"),//半透明遮罩
          $smask=$("#super-mask");//透明玻璃板
          var MSIZE=176,//mask的大小
              MAX=352-MSIZE;//top和left的最大值
          $smask
          .hover(
            function(){
              $mask.toggleClass("d-none");
              $lgDiv.toggleClass("d-none");
            }
          )
          .mousemove(function(e){
            var left=e.offsetX-MSIZE/2;
            var top=e.offsetY-MSIZE/2;
            if(left<0) left=0; 
            else if(left>MAX) left=MAX;
            if(top<0) top=0;
            else if(top>MAX) top=MAX;
            $mask.css({left,top});
            $lgDiv.css("background-position",
              `-${16/7*left}px -${16/7*top}px`)
          })

          
      })()
    }
  })