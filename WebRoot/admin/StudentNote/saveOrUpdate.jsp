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
			<b class="tip"></b>学生笔记
			<b class="tip"></b>操作界面
		</div>
		<s:form action="/StudentNote-updateUtil.action" method="post"
			enctype="multipart/form-data">
			<input name="util.id" value="${util.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed list">
				<thead>
					<tr>
						<td colspan="4">
							<b>学生笔记 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							学生
						</td>
						<td>
							${username }

						</td>

						<td>
							文件地址
						</td>
						<td>
							<div class="input-append">
								<s:file name="myFile" />
								<font size="2" color="red">文件为空表示不修改文件</font>
							</div>
						</td>
					<tr>
						<td>
							笔记标题
						</td>
						<td>
							<input name="util.s_3" size=100 class=123 value="${util.s_3 }"
								type="text" />
						</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td width="15%">
							笔记简述
						</td>
						<td width="500" colspan="3" height="">
							<textarea name="util.s_4" style="width: 95%" rows="4" cols="5">${util.s_4 }</textarea>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>
							&nbsp;
						</td>
						<td colspan="3">
							<c:if test="${type == 'student'||type=='admin'}">
								<input class="btn btn-inverse" id="find" type="submit"
									value="保存" />
							</c:if>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="取消" />
							&nbsp;&nbsp;
							<font color=red><s:property value="err" /> </font>
						</td>
					</tr>
				</tfoot>
			</table>
		</s:form>
	</body>
</html>