<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>软件学院云笔记教学辅助系统</title>
		<%@ include file="common.jsp"%>
		<%@ include file="admin/com.jsp"%>
	</head>
	<body>
		<div class="warp">

			<!--头部开始-->
			
			<div class="top_c">
			<div style="border:1px solid #586683;height:95px;width: 450px; "> 
			<div class="logo">
			</div>
			
			<div style="margin-top:-48px;margin-left: 100px;">
			<span style="font-size:35px;font-weight: bold;color: #CD853F ">软件学院云笔记平台</span>
			</div>
			</div>
				<div class="top-nav">
				   
					欢迎您，${username }！&nbsp;&nbsp;
					<a
						href="${pageContext.request.contextPath}/admin/User/updatepwd.jsp"
						target="Conframe">修改密码</a> |
					<a href="${pageContext.request.contextPath}/admin/User/help.jsp"
						target="Conframe">帮助</a> |
					<a href="${pageContext.request.contextPath}/login.jsp">安全退出</a>
					
				</div>
			</div>
			<!--头部结束-->

			<!--左边菜单开始-->
			<div class="left_c left">
				<h1>
					系统操作菜单
				</h1>
				<div class="acc">

					<div>
						<a class="one">个人资料</a>
						<ul class="kid">
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/initInfo.action">修改个人信息</a>
							</li>
						</ul>
					</div>
					<c:if test="${type == 'admin'}">
						<div>
							<a class="one">用户管理</a>
							<ul class="kid">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp">增加</a>
								</li>
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/User-getAllUtil.action">操作</a>
								</li>
							</ul>
						</div>
					</c:if>
					<div>
						<a class="one">课程管理</a>
						<ul class="kid">
							<c:if test="${type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Course-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Course-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">学生选课</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/CourseStudent-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/CourseStudent-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">通知</a>
						<ul class="kid">
							<c:if test="${type == 'teacher' || type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Notes-initUtil.action">发布通知</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Notes-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">教师笔记</a>
						<ul class="kid">
							<c:if test="${type == 'teacher'|| type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/TeacherFile-initUtil.action">上传</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/TeacherFile-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">学生提问</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Guestbook-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Guestbook-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>

					<div>
						<a class="one">问题解答</a>
						<ul class="kid">
							<c:if test="${type == 'teacher'|| type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/ReplyGuestbook-initUtil.action">解答</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/ReplyGuestbook-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">系统反馈</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Tickling-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Tickling-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">学生笔记</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/StudentNote-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">学生作业</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/StudentWork-initUtil.action">增加</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/StudentWork-getAllUtil.action">操作</a>
							</li>
						</ul>
					</div>
					<div id="datepicker"></div>
				</div>

			</div>
			<!--左边菜单结束-->

			<!--右边框架开始-->
			<div class="Conframe">
				<iframe name="Conframe" id="Conframe"></iframe>
			</div>
			<!--右边框架结束-->

			<!--底部开始-->
			<div class="bottom_c">
				Copyright &copy;云笔记教辅系统 版权所有 指导老师：娄文 学生：何舒展、梁晨
			</div>
			<!--底部结束-->
		</div>
	</body>
</html>