//1:获取所有元素
var container = document.querySelector(".container");
var ctrl = document.querySelector(".ctrl");
var v3 = document.getElementById("v3");
v3.volume = 0.1;
var img = document.querySelector(".ctrl img");
//2:为父元素绑定鼠标移入移出事件 
/*container.onmouseenter = function(){
   ctrl.style.display = "block";
}
container.onmouseleave = function(){
   ctrl.style.display = "none";
}*/
//3:点击播放按钮 播放或者暂停 视频播放
container.onclick = function(e){
  e.preventDefault(); //a submit button
  if(v3.paused){
    v3.play(); //播放视频
    img.src = "video/pause.png";//换暂停图片
  }else{
    v3.pause();//暂停播放
    img.src = "video/play.png";//换播放图片
  }
}
//4:广告 播放视频广告隐藏 暂停播放广告显示
var ad = document.querySelector(".ad");
v3.onplay = function(){
  ad.style.display = "none"
}
v3.onpause = function(){
  ad.style.display = "block"
}