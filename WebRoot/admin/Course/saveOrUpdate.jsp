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
				$('.modal').show();
				$(".datepicker").datepicker();
				$('#list').hide();
				$('#find').click(function () {
					$('#list').show();
				})
			})
		</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>课程管理
			<b class="tip"></b>操作界面
		</div>
		<form
			action="${pageContext.request.contextPath}/Course-saveOrUpdateObject.action"
			method="post">
			<input name="util.id" value="${util.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed list">
				<thead>
					<tr>
						<td colspan="4">
							<b>课程管理 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							上课教师
						</td>
						<td  colspan="3" >
							<select name="util.user.id">
								<c:forEach var="type" items="${listUser}">
									<option
										<c:if test="${type.id == util.user.id }">
																	selected
																	</c:if>
										value="${type.id }">
										${type.s_0 }
									</option>
								</c:forEach>
							</select>
							
						</td>
					</tr>

					<tr>
						<td>
							课程名称
						</td>
						<td>
							<input name="util.s_0" value="${util.s_0 }" type="text" />
							
						</td>
						<td>
							添加日期
						</td>
						<td>
							<div class="input-append">
								<input name="util.s_1" value="${util.s_1 }" type="text"
									class="span2 datepicker" readonly="readonly" />
								
								<span class="add-on"><i class="icon-calendar"></i> </span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							上课地点
						</td>
						<td>
							<input name="util.s_2" value="${util.s_2 }" type="text" />
							
						</td>
						<td>
							课时
						</td>
						<td>
							<input name="util.s_3" value="${util.s_3 }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							学分
						</td>
						<td>
							<input name="util.s_4" size=100 class=123 value="${util.s_4 }"
								type="text" />
						</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td width="15%">
							课程介绍
						</td>
						<td width="500" colspan="3" height="">
							<textarea name="util.s_5" style="width: 95%" rows="4" cols="5">${util.s_5 }</textarea>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>
							&nbsp;
						</td>
						<td colspan="3">
							<c:if test="${type == 'admin'}">
								<input class="btn btn-inverse" id="find" type="submit"
									value="保存" />
							</c:if>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="取消" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</body>
</html>