<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<embed src="bgmusic/1.mp3" hidden=true autostart=true loop=true> </embed>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>软件学院云笔记教学辅助系统</title>
		<link rel="stylesheet" type="text/css" href="common/Styles/base.css" />
		<link rel="stylesheet" type="text/css"
			href="common/Styles/admin-all.css" />
		<link rel="stylesheet" type="text/css"
			href="common/Styles/bootstrap.min.css" />
		<script type="text/javascript" src="common/Scripts/jquery-1.7.2.js"></script>
		<script type="text/javascript"
			src="common/Scripts/jquery.spritely-0.6.js"></script>
		<script type="text/javascript" src="common/Scripts/chur.min.js"></script>
		<link rel="stylesheet" type="text/css" href="common/Styles/login.css" />
		<script type="text/javascript">
        $(function () {
            $('#clouds').pan({ fps: 20, speed: 0.7, dir: 'right', depth: 10 });
            $('.teds').click(function () {
                if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") { $('.tip').html('用户名或密码不可为空！') }
                else {
                    location.href = 'index.jsp';
                }
            })
        })
	
  		function flushCode(){
  			document.getElementById("codeimg").src = "imageServlet?random=" + Math.random();
  		}
  		
  		function checkValue(){
  			var uid = document.getElementById("uid").value;
  			var pwd = document.getElementById("pwd").value;
  			var code = document.getElementById("code").value;
  			if((null == uid) || ("" == uid))
  			{
  				alert("用户名不能为空");
  				return false;
  			}
  			
  			if((null == pwd) || ("" == pwd))
  			{
  				alert("密码不能为空");
  				return false;
  			}
  			
  			if((null == code) || ("" == code))
  			{
  				alert("验证码不能为空");
  				return false;
  			}
  			
  			return true;
  		}

		</script>
	</head>
	<body>
		<div id="clouds" class="stage"></div>
		<div class="loginmain">
		</div>
		<form action="login.action" method="post" onsubmit="return checkValue();">
			<div class="row-fluid">
				<h1>
					软件学院云笔记教学辅助系统
				</h1>
				<p>
					<label>
						帐&nbsp;&nbsp;&nbsp;&nbsp;号：
						<input name="util.s_1" type="text" id="uid" />
					</label>
				</p>
				<p>
					<label>
						密&nbsp;&nbsp;&nbsp;&nbsp;码：
						<input name="util.s_2" type="password" id="pwd" />
					</label>
				</p>

				<p>
					<label>
						效验码：
						<input type="text" name="code" id="code" maxlength="5"
							class="code" />
						<img id="codeimg" src="imageServlet" onClick="flushCode()" />
						&nbsp;
						<a href="register.jsp" style="text-decoration: none"
							class="login-text02">我要注册</a>

					</label>
				</p>
				<p>
					<label>

						角&nbsp;&nbsp;&nbsp;&nbsp;色：&nbsp;&nbsp;
						<select name="util.s_11">
							<option value="teacher">
								教师
							</option>
							<option value="student">
								学生
							</option>
							<option value="admin">
								管理员
							</option>
						</select>&nbsp;&nbsp;
						<font color=red><s:property value="errMsg" /> </font>
					</label>

				</p>

				<hr />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value=" 登 录 "
					class="btn btn-primary btn-large login" id="teds" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" 取 消 " class="btn btn-large" />
			</div>

		</form>
	</body>
</html>