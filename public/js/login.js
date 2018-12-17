document.getElementById("content1").style.zIndex=10
var tabs=document.querySelectorAll("[data-toggle=tab]")
for(var tab of tabs){
  tab.onclick=function(){
    var tab=this;
    //查找id为container下所有div
    var divs=
      document.getElementById("container").children;
    //遍历并清除所有div的zIndex属性
    for(var div of divs){
      div.style.zIndex=""
    }
    var id=tab.getAttribute("data-target");//#xxxx
         //tab.dataset.target//#xxxx
    var div=document.querySelector(id)
    div.style.zIndex=10
  }
}


$(function(){//login.html中jquery-3.2.1.js
    $("input.login").click(function(){
      var uname=$("input.uname").val();
      var upwd=$("input.upwd").val();
      //console.log(uname,upwd)
      (async function(){
        var res=await $.ajax({
          url:"http://localhost:3000/users/signin",
          type:"post",
          data:{uname,upwd},
          dataType:"json"
        })
        if(res.ok==0)
          alert(res.msg);
        else{
          alert("登录成功！即将返回来时的页面...")
          if(location.search.startsWith("?back=")){
            var url=location.search.slice(6)
          }else{
            var url="product.html?kwords=o"
          }
          location.href=url;
        }
      })()
    })
  })