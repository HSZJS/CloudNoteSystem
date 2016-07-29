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
			��ǰλ��
			<b class="tip"></b>ѧ���ʼ�
			<b class="tip"></b>��ѯ����
		</div>
		<form
			action="${pageContext.request.contextPath}/StudentNote-getAllUtil.action">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="6" class="auto-style2">
							&nbsp;����д��ѯ����
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align=right>
							&nbsp;&nbsp;
							<select name="message">
								<option value="s_4" />
									ѧ��
								</option>
								<option value="s_1" />
									�ϴ�ʱ��
								</option>
								<option value="s_3" />
									�ļ���
								</option>
								</select>
						</td>
						<td class="detail" colspan="5">
							<input type="text" name="str" id="str" value="${str }" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" id="find" type="submit" value="��ѯ" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" type="button" value="���"
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
							ͼƬ
						</td>
						<td>
							ѧ��
						</td>
						<td>
							�ϴ�ʱ��
						</td>
						<td>
							�ʼǱ���
						</td>
						<td>
							����
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
									href="${pageContext.request.contextPath}/admin/download.jsp?filename=${tmp.s_0}">����</a>
								&nbsp;&nbsp;
								<c:if test="${type == 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-selectUtil.action?util.id=${tmp.id }">�޸�
									</a>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-deleteUtil.action?util.id=${tmp.id }">ɾ��
									</a>
								</c:if>
								<c:if test="${type != 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/StudentNote-selectUtil.action?util.id=${tmp.id }">�鿴
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
