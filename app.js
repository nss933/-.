const express=require('express')
const app=express()
// app.listen(3000)
//引入用户路由器
const userootRouter=require('./routes/useroot.js')


app.listen(3000,()=>{
	console.log('服务器启动成功...')
})
//中间件
//将post传递参数转对象
app.use(express.urlencoded({
	extended:true
}))


//挂载路由器，路由器下的路由成为WEB服务器下的路由
//添加前缀/v1/users
app.use('/useroot',userootRouter)
//添加错误处理中间件，拦截所有的错误
app.use((err,req,res,next)=>{
	//err接受到的路由传递过来的错误
	console.log(err)
	//响应给前端
	res.send({code:500,msg:'服务器端错误'})
})