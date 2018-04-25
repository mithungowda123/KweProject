<%-- <%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderConstants"%>
<%@page import="com.timeinc.tcs.AffiliateOrders.Entity.UserInfo"%> --%>

<link rel="stylesheet" type="text/css"	href="/KWEproject/css/KWEproject.css">
<script type="text/javascript" src="/KWEproject/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"	src="/KWEproject/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/KWEproject/js/presentation.js"></script>



<div id="headerContainerDiv">
	<div id="headerDiv">Order Processing Utility</div>
	<div class="clear"></div>
	<div id="menuDiv">
		<ul>
			<a href="#"><li>Home</li></a>
			<%-- <a href="#"><li>Download Template</li></a>
			<a href="#"><li>Create orders</li></a>
			<a href="#"><li>View Order History</li></a>
			<% if(userInfo.getRole().equals(AffiliateOrderConstants.ROLE_ADMIM)){ %>
			<a href="/AffiliateOrders/jsp/manageUsers.jsp"><li>Manage Users</li></a>
			<% } %>
			<a href="#"><li>Change Password</li></a> --%>
			<a href="#"><li>Logout</li></a>
			<a href="#"><li>Browser Settings</li></a>
		</ul>
	</div>
	<div class="clear"></div>
</div>

<%-- <div id="welcomeDiv">Welcome <%= userInfo.getFirstName()+" "+userInfo.getLastName() %>
<% if(request.getAttribute(AffiliateOrderConstants.ERROR_MSG)!=null && !request.getAttribute(AffiliateOrderConstants.ERROR_MSG).equals("")){ %>
<br/><br/><font color="red"><%= request.getAttribute(AffiliateOrderConstants.ERROR_MSG) %></font><br />
<% } %>
</div> --%>
<div class="clear"></div>
