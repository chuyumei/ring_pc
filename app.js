//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
/*引入路由模块*/
const index=require("./routes/index");
const details=require("./routes/details");
const product=require("./routes/product")
const users=require("./routes/users")



var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(session({
  secret: '128位随机字符串',
  resave: false,
  saveUninitialized: true,
}))
//req.session
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/details",details);
app.use("/product",product);
app.use("/users",users);
//接口地址http://localhost:3000/details/?lid=5

