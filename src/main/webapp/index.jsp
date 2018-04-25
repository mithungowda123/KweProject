

<%-- <html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a>
	</body>
</html> --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.sendRedirect("PSA/PSAlogin.htm"); %>