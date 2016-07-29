<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../comlist.jsp"%>
		<script type="text/javascript">
			$(function () {
				$(".datepicker").datepicker();
			})
		</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>疑难问题
			<b class="tip"></b>查询界面
		</div>
		<ec:table items="list"
			action="${pageContext.request.contextPath}/Guestbook-getAllUtil.action"
			imagePath="${pageContext.request.contextPath}/common/img/table/*.gif"
			title="疑难问题" width="100%" rowsDisplayed="5" var="tmp"><ec:exportXls fileName="Guestbook.xls" tooltip="Excel" /><ec:row>
				<ec:column property="user.s_0" title="提问者" />
				<ec:column property="s_0" title="提问标题" />
				<ec:column property="s_1" title="提问日期" />
				<ec:column sortable="false" filterable="false" viewsDenied="xls"
					alias="id2" title="具体操作">
						<c:if test="${type == 'admin'}">
							<a target="Conframe"
								href="${pageContext.request.contextPath}/Guestbook-selectUtil.action?util.id=${tmp.id }">修改
							</a>
							<a target="Conframe"
										href="${pageContext.request.contextPath}/Guestbook-deleteUtil.action?util.id=${tmp.id }">删除
							</a>
						</c:if>
								<c:if test="${type != 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/Guestbook-selectUtil.action?util.id=${tmp.id }">查看
							</a>
						</c:if>
				</ec:column>
				</ec:row>
		</ec:table>
	</body>
</html>
