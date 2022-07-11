const express=require('express')
//引入连接池模块
const pool=require('../pool.js')
//引入路由器下模块
const r=express.Router()


//添加用户列表接口(get  /list)
// {code:200,msg:'查询成功', data: xx}


// //2.用户列表接口（get /list）
// //接口地址：http://127.0.0.1:3000/v1/users/list
// //请求方式：get

// r.get('/list',(req,res,next)=>{
	
// 	console.log(req.query)
// 	if(!req.query.pno){
// 		req.query.pno=0
// 	}
// 	if(!req.query.count){
// 		req.query.count=0
// 	}
// 	var start=(req.query.pno-1)*req.query.count
// 	var size=parseInt(req.query.count)
// 	pool.query('select uid,uname from xz_user limit ?,?',[start,size],(err,r)=>{
// 		if(err){
// 			//如果有错误把它交给下一个错误处理中间件
// 			next(err)
// 			//阻止往后执行
// 			return
			
// 		}
// 		console.log(r)
// 		//查询的结果是数组，把结果响应给前端
// 		res.send({code:200,msg:'查询成功',data:r})
// 	})
	
	
// })

//登录接口(post  /login)，传递用户名uname和密码upwd，获取传递的参数；执行SQL命令，查询数据库中是否存在该用户，如果没有{code:501msg:'登录失败'}，否则 {code:200msg:'登录成功'}
//3.用户登录接口（post /login）
//接口地址：http://127.0.0.1:3000/useroot/rootLogin
//请求方式：post
r.post('/rootLogin',(req,res,next)=>{
	console.log(req.body)
	//判断是否为空
	if(!req.body.dname){
		res.send({code:401,msg:'用户名不能为空'})
		return//阻止往后执行
	}
	if(!req.body.dpwd){
		res.send({code:401,msg:'密码名不能为空'})
		return//阻止往后执行
	}
	// if(!req.body.demail){
	// 	res.send({code:401,msg:'邮箱不能为空'})
	// 	return//阻止往后执行
	// }
	// if(!req.body.dphone){
	// 	res.send({code:401,msg:'电话不能为空'})
	// 	return//阻止往后执行
	// }
	let dname =req.body.dname; 
	let dpwd =req.body.dpwd;
	pool.query('select * from admin where dname=? && dpwd=?',[dname,dpwd],(err,r)=>{
		if(err){
			next(err)
			return
		}
		console.log(r)
		//成功结果是数组
		//如果是空数组，说明登录失败
	
		if(r.length===0){
			res.send({code:501,msg:'登陆失败'})
			
		}else{
			
			res.send({code:200,msg:'登录成功'})
		}
		
	})
	
})


//暴露路由器对象
module.exports=r