<%-- <%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderConstants"%>
<%@page import="com.timeinc.tcs.AffiliateOrders.Entity.UserInfo"%> --%>

<link rel="stylesheet" type="text/css"	href="/AffiliateOrders/css/AffiliateOrders.css">
<script type="text/javascript" src="/AffiliateOrders/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"	src="/AffiliateOrders/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/AffiliateOrders/js/presentation.js"></script>



<div id="headerContainerDiv">
	<div id="headerDiv">Order Processing Utility</div>
	<div class="clear"></div>
	<div id="menuDiv">
		<ul>
			<a href="/AffiliateOrders/jsp/home.jsp"><li>Home</li></a>
			<a href="/AffiliateOrders/DownloadTemplate"><li>Download Template</li></a>
			<a href="/AffiliateOrders/jsp/createOrders.jsp"><li>Create orders</li></a>
			<a href="/AffiliateOrders/jsp/viewOrders.jsp"><li>View Order History</li></a>
			<%-- <% if(userInfo.getRole().equals(AffiliateOrderConstants.ROLE_ADMIM)){ %>
			<a href="/AffiliateOrders/jsp/manageUsers.jsp"><li>Manage Users</li></a>
			<% } %> --%>
			<a href="/AffiliateOrders/jsp/changePassword.jsp"><li>Change Password</li></a>
			<a href="/AffiliateOrders/jsp/login.jsp?logout=true"><li>Logout</li></a>
			<a href="/AffiliateOrders/jsp//language_snippet.jsp"><li>Browser Settings</li></a>
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
