<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../com.jsp"%>
		<script type="text/javascript">
			$(function () {
				$(".datepicker").datepicker();
			})
		</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>学生笔记
			<b class="tip"></b>查询界面
		</div>
		<form
			action="${pageContext.request.contextPath}/StudentNote-getAllUtil.action">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="6" class="auto-style2">
							&nbsp;请填写查询条件
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align=right>
							&nbsp;&nbsp;
							<select name="message">
								<option value="s_4" />
									学生
								</option>
								<option value="s_1" />
									上传时间
								</option>
								<option value="s_3" />
									文件名
								</option>
								</select>
						</td>
						<td class="detail" colspan="5">
							<input type="text" name="str" id="str" value="${str }" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" id="find" type="submit" value="查询" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" type="button" value="清空"
								onclick="javascript: document.getElementById('str').value='';" />
							&nbsp;&nbsp;
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<c:if test="${list != 'null'}">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">
						<td>
							图片
						</td>
						<td>
							学生
						</td>
						<td>
							上传时间
						</td>
						<td>
							笔记标题
						</td>
						<td>
							操作
						</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list}">
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/upload/${tmp.s_0 }" width="60" height="20"/>
							</td>
							<td>
								${tmp.user.s_0 }
							</td>
							<td>
								${tmp.s_1 }
							</td>
							<td>
								${tmp.s_3 }
							</td>
							<td>								<a
									href="${pageContext.request.contextPath}/admin/download.jsp?filename=${tmp.s_0}">下载</a>
								&nbsp;&nbsp;
								<c:if test="${type == 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-selectUtil.action?util.id=${tmp.id }">修改
									</a>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-deleteUtil.action?util.id=${tmp.id }">删除
									</a>
								</c:if>
								<c:if test="${type != 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-selectUtil.action?util.id=${tmp.id }">查看
									</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</body>
</html>
