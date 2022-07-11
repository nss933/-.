const express=require("express")
const app=express()
app.listen(3000,()=>{
	console.log("成功")
})
const userRouter=require("./routes/register.js")
//中间件在这里写
app.use(express.urlencoded({
	extended:true
	
}))
app.use("/users",userRouter)

//添加一个错误处理中间件，拦截所有错误
app.use((err,req,res,next)=>{
	//err所接收到的路由传递过来的错误
	console.log(err)
	//响应给前端
	res.send({code:500,msg:"服务器端错误"})
})


