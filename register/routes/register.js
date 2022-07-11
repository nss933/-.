const express = require("express")
const pool = require("../pool.js")
const r = express.Router()

//查询手机号是否存在（get/dphone）
//接口地址：http://127.0.0.1:3000/users/dp
//请求方式：get
r.get('/dp', (req, res, next) => {
  //1.3执行SQL命令，查询数据
  pool.query('select * from user ', (err, r) => {
    if (err) {
      //如果SQL中有错误，交给下一个错误处理中间件
      next(err)
      //阻止往后执行
      return
    }
    console.log(r)
    if (r) {
      res.send({ code: 200, msg: '查询成功', data: r })
    } else {
      res.send({ code: 201, msg: '查询失败' })
    }
  })
})

//查询邮箱是否存在（get/deamil）
//接口地址：http://127.0.0.1:3000/users/de
//请求方式：get
r.get('/de', (req, res, next) => {
  //1.3执行SQL命令，查询数据
  pool.query('select * from user ', (err, r) => {
    if (err) {
      //如果SQL中有错误，交给下一个错误处理中间件
      next(err)
      //阻止往后执行
      return
    }
    console.log(r)
    if (r) {
      res.send({ code: 200, msg: '查询成功', data: r })
    } else {
      res.send({ code: 201, msg: '查询失败' })
    }
  })
})



//手机号登陆接口（post/logp），传递手机号dphone，获取传递的参数，执行SQL命令，查询数据库中是否存在该用户，如果有（{code:501,msg:"登陆失败"}），否则({code:200,msg:"登陆成功"})
r.post("/logp", (req, res, next) => {
	var obj = req.body
	console.log(obj)
	if (!/^1[3-9]\d{9}$/.test(obj.dphone)) {
		res.send({ code: 401, msg: "手机号格式错误" })
		return
	}
	//执行SQL命令
	pool.query("select * from user where dphone = ?", [obj.dphone], (err, r) => {
		if (err) {
			next(err)
			return
		}
		console.log(r)
		if (r.length === 0) {
			res.send({ code: 501, msg: "登陆失败" })
		} else {
			res.send({ code: 200, msg: "登陆成功" })
		}
	})
})

//邮箱登陆接口（post/loge），传递手机号dphone，获取传递的参数，执行SQL命令，查询数据库中是否存在该用户，如果有（{code:501,msg:"登陆失败"}），否则({code:200,msg:"登陆成功"})
r.post("/loge", (req, res, next) => {
	var obj = req.body
	console.log(obj)
	if(!/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(obj.demail)){
		res.send({code:401,msg:"邮箱不能为空"})
		return
	}
	if(!obj.upwd){
		res.send({code:402,msg:"密码不能为空"})
		return
	}
	//执行SQL命令
	pool.query("select * from user where deamil=? && dpwd=?", [obj.demail,obj.dpwd], (err, r) => {
		if (err) {
			next(err)
			return
		}
		console.log(r)
		if (r.length === 0) {
			res.send({ code: 501, msg: "登陆失败" })
		} else {
			res.send({ code: 200, msg: "登陆成功" })
		}
	})
})


//修改用户接口(put /)，使用post传参方式传递编号，邮箱，手机，真实姓名，性别；获取传递的参数，执行SQL命令，修改成功，响应{code:200,msg:'修改成功'}，否则{code:501,msg:'修改失败'}
r.put("/change", (req, res, next) => {
	//获取post传递的参数
	var obj = req.body
	console.log(obj)
	//验证是否为空，格式是否正确

	//执行SQL命令
	pool.query("update user set ? where did=?", [obj, obj.did], (err, r) => {
		if (err) {
			next(err)
			return
		}
		console.log(r)
		if (r.affectedRows === 0) {
			res.send({ code: 501, msg: '修改失败' })
		} else {
			res.send({ code: 200, msg: '修改成功' })
		}
	})
})


//参数列表user 删除数据接口（delete /del）
//接口地址：http://127.0.0.1:3000/users/del
//请求方式：delete
r.delete('/del', (req, res, next) => {
  var obj = req.query
  console.log(req.query)

  //1.3执行SQL命令，插入数据
  pool.query('delete from user where did=? ', [obj.did], (err, r) => {
    if (err) {
      //如果SQL中有错误，交给下一个错误处理中间件
      next(err)
      //阻止往后执行
      return
    }
    console.log(r)
    if (r.affectedRows === 0) {
      res.send({ code: 201, msg: '删除失败' })
    } else {
      res.send({ code: 200, msg: '删除成功' })
    }
  })
})

module.exports = r