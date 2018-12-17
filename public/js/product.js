$(function(){
  if(location.search.indexOf("kwords=")!=-1){
    var kwords=decodeURI(
      location.search.split("=")[1]
    );
    var pno=0;
    function loadPage(no=0){//no:新页号
      pno=no;
      $.ajax({
        url:"http://localhost:3000/product",
        type:"get",
        data:{kwords,pno},
        dataType:"json",
        success:function(output){
          //console.log(output);
          var { product,pageCount }=output;
          var html="";
          for(var p of product){
            var {lid,title,price,pic,details}=p;
            html+=`<div class="search-div">
            <a href="details.html?lid=1"><img src="${pic}"></a>
            <ul class="search-text">
              <li class="title"><span>${title}</span> <span>${details}</span></li>
              <li class="btn">
                <div class="clearboth">
                  <span class="btn-price float_left">￥<b>${price.toFixed(2)}</b></span>
                  <span class="btn-pay float_left"><a href="details.html?lid=2">点击购买</a></span>
                </div>
              </li>
            </ul>
          </div> `;
          }
          $plist.html(html);
 //1. 搜索框点击事件
            var $btnSearch=$("#btnsearch");
            var $input=$btnSearch.prev();
          //2. 绑定事件
            $btnSearch.click(function(){
              //  3. 查找要修改的元素
              //  4. 修改元素
              //alert("疼")
              var kw=$input.val().trim();
              if(kw!=="")
                location.href=
                  `product.html?kwords=${kw}`;
            })
            $input.keyup(function(e){
              if(e.keyCode==13) $btnSearch.click()
            })

            if(location.search.indexOf("kwords")!=-1){
              var kwords=decodeURI(
                location.search.split("=")[1]
              )
              $input.val(kwords)
            }

          //HTML: 删除49行到下一页li之前的内容
          var html="";
          for(var i=1;i<=pageCount;i++){
            //复制HTML中48行到此，并注释48行
            html+=`<li class="page-item ${i==pno+1?'active':''}"><a class="page-link " href="#">${i}</a></li>`
          }
          //删除中间li:
          $ul.children(":not(:first-child):not(:last-child)").remove()
          //将html追加到上一页后
          $ul.children().first().after(html)
          if(pno==0){//如果当前页是第一页就禁用上一页
            $ul.children().first().addClass("disabled")
          }else{//否则就启用上一页
            $ul.children().first().removeClass("disabled")
          }
          if(pno==pageCount-1){
            $ul.children().last().addClass("disabled")
          }else{
            $ul.children().last().removeClass("disabled")
          }
        }
      })
    }
    loadPage();
    //$.ajax({...})
    var $plist=$("#plist");
    var $ul=$("#pages")
    //只在页面首次加载时，在分页按钮的父元素上绑定一次
    $ul.on("click","a",function(e){
      e.preventDefault();
      var $a=$(this);
      //除了禁用和当前正在激活按钮之外才能点击
      if(!$a.parent().is(".disabled,.active")){
        if($a.parent().is(":first-child"))//上一页
          var no=pno-1;//新页号=当前页号-1
        else if($a.parent().is(":last-child"))
          var no=pno+1;//新页号=当前页号+1
        else//1、2、3按钮
          var no=$a.html()-1;//新页号=按钮内容-1
        loadPage(no);//重新加载新页号的页面内容
      }
    });
  }
})