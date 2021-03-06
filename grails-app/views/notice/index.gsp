
<%@ page import="noticeboard.Notice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<style>
		.ui.table {
			text-align: center;
			color: black;
		}
		.ui.table thead th{
			text-align: center;
			color: #3573A3;
		}
		.ui.table thead tr{
			text-align: center;
		}
		a{
			color: #3573A3;
		}
		</style>
	</head>
	<body>

		<div id="list-notice" class="content scaffold-list" role="main">
			<table class="ui celled table" style="width: 80%;margin: 0px auto;">
			<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'notice.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'notice.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="noticeDate" title="${message(code: 'notice.noticeDate.label', default: 'Notice Date')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'notice.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noticeInstanceList}" status="i" var="noticeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noticeInstance.id}">${fieldValue(bean: noticeInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: noticeInstance, field: "description")}</td>
					
						<td><g:formatDate date="${noticeInstance.noticeDate}" /></td>
					
						<td>${fieldValue(bean: noticeInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${noticeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
