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
			��ǰλ��
			<b class="tip"></b>ѧ����ҵ
			<b class="tip"></b>��������
		</div>
		<s:form
			action="/StudentWork-updateUtil.action"
			method="post"	enctype="multipart/form-data">
			<input name="util.id" value="${util.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed list">
				<thead>
					<tr>
						<td colspan="4">
							<b>ѧ����ҵ </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							ѧ��
						</td>
						<td >
							${username }
							
						</td>

						<td>
							�ļ���ַ
						</td>
						<td>
							<div class="input-append">
								<s:file name="myFile"/>
								<font size="2" color="red">�ļ�Ϊ�ձ�ʾ���޸��ļ�</font>
							</div>
						</td>
					<tr>
						<td>
							��ҵ����
						</td>
						<td>
							<input name="util.s_3" value="${util.s_3 }" type="text" />
							
						</td>
						<td>
							�÷�
						</td>
						<td>
							<input name="util.s_4" value="${util.s_4 }" <c:if test="${type == 'student'}">readonly</c:if> type="text" />
						</td>
					</tr>
					<tr>
						<td width="15%">
							��ʦ��ע
						</td>
						<td width="500" colspan="3" height="">
							<textarea name="util.s_5" style="width: 95%" <c:if test="${type == 'student'}">readonly</c:if> rows="4" cols="5">${util.s_5 }</textarea>
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
									value="����" />
							</c:if>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="ȡ��" />
						</td>
					</tr>
				</tfoot>
			</table>
		</s:form>
	</body>
</html>