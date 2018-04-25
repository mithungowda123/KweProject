<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderConstants"%> --%>
<%@page	language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div id="containerDiv">
<jsp:include page="../common/header.jsp" />
<%-- <div id="bodyDiv">
<% if(request.getAttribute(AffiliateOrderConstants.ERROR_MSG)!=null && !request.getAttribute(AffiliateOrderConstants.ERROR_MSG).equals("")) { 
	// Error message will be displayed by Header.jsp
%>
<% } else { %>
	This utility application is designed to upload bulk orders for processing. Maximum of 300 orders are allowed at a time.
<% } %>
</div> --%>
<jsp:include page="../common/footer.jsp" />
</div>
</body>
</html>