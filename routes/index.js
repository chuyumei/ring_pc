const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/getIndexProducts",(req,res)=>{
  var sql="SELECT * FROM ring  where seq_recommended!=0 order by seq_recommended";
  pool.query(sql,[],(err,result)=>{
    if(err) console.log(err);
   //console.log(result);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    setTimeout(function(){
      res.end();
    },1000)
  })
})
//接口地址: http://localhost:3000/index/getIndexProducts
module.exports=router;