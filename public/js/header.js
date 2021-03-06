$(function(){
    //1. 动态创建link引用header.css
    $("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
    //2. ajax请求header.html片段
    $.ajax({
      url:"http://localhost:3000/header.html",
      type:"get",
      success:function(res){
          console.log(res)
        $("#header").replaceWith(res)
        //1. 查找触发事件的元素
        var $btnSearch=
              $("#header>div.header-r>div.search>img"),
            $input=
              $btnSearch.parent().prev();
        //2. 绑定事件
        $btnSearch.click(function(){
          //  3. 查找要修改的元素
          //  4. 修改元素
          var kw=$input.val().trim();
          if(kw!=="")
            location.href=
              `products.html?kwords=${kw}`;
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
      }
    })
  })


  $.ajax({
    url:"http://localhost:3000/users/islogin",
    type:"get",
    dataType:"json",
    success:function(res){
      console.log(res)
      if(res.ok==0){
        $("#signout").show().next().hide();
      }else{
        $("#uname").html(res.uname);  console.log(res.uname)
        $("#signout").hide().next().show();
      }
    }
  })