<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>���ѧԺ�Ʊʼǽ�ѧ����ϵͳ</title>
		<%@ include file="common.jsp"%>
		<%@ include file="admin/com.jsp"%>
	</head>
	<body>
		<div class="warp">

			<!--ͷ����ʼ-->
			
			<div class="top_c">
			<div style="border:1px solid #586683;height:95px;width: 450px; "> 
			<div class="logo">
			</div>
			
			<div style="margin-top:-48px;margin-left: 100px;">
			<span style="font-size:35px;font-weight: bold;color: #CD853F ">���ѧԺ�Ʊʼ�ƽ̨</span>
			</div>
			</div>
				<div class="top-nav">
				   
					��ӭ����${username }��&nbsp;&nbsp;
					<a
						href="${pageContext.request.contextPath}/admin/User/updatepwd.jsp"
						target="Conframe">�޸�����</a> |
					<a href="${pageContext.request.contextPath}/admin/User/help.jsp"
						target="Conframe">����</a> |
					<a href="${pageContext.request.contextPath}/login.jsp">��ȫ�˳�</a>
					
				</div>
			</div>
			<!--ͷ������-->

			<!--��߲˵���ʼ-->
			<div class="left_c left">
				<h1>
					ϵͳ�����˵�
				</h1>
				<div class="acc">

					<div>
						<a class="one">��������</a>
						<ul class="kid">
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/initInfo.action">�޸ĸ�����Ϣ</a>
							</li>
						</ul>
					</div>
					<c:if test="${type == 'admin'}">
						<div>
							<a class="one">�û�����</a>
							<ul class="kid">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp">����</a>
								</li>
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/User-getAllUtil.action">����</a>
								</li>
							</ul>
						</div>
					</c:if>
					<div>
						<a class="one">�γ̹���</a>
						<ul class="kid">
							<c:if test="${type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Course-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Course-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">ѧ��ѡ��</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/CourseStudent-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/CourseStudent-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">֪ͨ</a>
						<ul class="kid">
							<c:if test="${type == 'teacher' || type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Notes-initUtil.action">����֪ͨ</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Notes-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">��ʦ�ʼ�</a>
						<ul class="kid">
							<c:if test="${type == 'teacher'|| type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/TeacherFile-initUtil.action">�ϴ�</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/TeacherFile-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">ѧ������</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Guestbook-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Guestbook-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>

					<div>
						<a class="one">������</a>
						<ul class="kid">
							<c:if test="${type == 'teacher'|| type == 'admin'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/ReplyGuestbook-initUtil.action">���</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/ReplyGuestbook-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">ϵͳ����</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/Tickling-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/Tickling-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">ѧ���ʼ�</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/StudentNote-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div>
						<a class="one">ѧ����ҵ</a>
						<ul class="kid">
							<c:if test="${type == 'student'}">
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/StudentWork-initUtil.action">����</a>
								</li>
							</c:if>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/StudentWork-getAllUtil.action">����</a>
							</li>
						</ul>
					</div>
					<div id="datepicker"></div>
				</div>

			</div>
			<!--��߲˵�����-->

			<!--�ұ߿�ܿ�ʼ-->
			<div class="Conframe">
				<iframe name="Conframe" id="Conframe"></iframe>
			</div>
			<!--�ұ߿�ܽ���-->

			<!--�ײ���ʼ-->
			<div class="bottom_c">
				Copyright &copy;�Ʊʼǽ̸�ϵͳ ��Ȩ���� ָ����ʦ��¦�� ѧ��������չ������
			</div>
			<!--�ײ�����-->
		</div>
	</body>
</html>