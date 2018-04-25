<%-- <%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderConstants"%>
<%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderDBQuery"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
   #errMsg{
                color: #5a5656;
                font-size: 10px;
            }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/KWEproject/css/KWEproject.css">
<script type="text/javascript" src="/KWEproject/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/KWEproject/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/KWEproject/js/presentation.js"></script>

<script>
function checkForm() {
    if ($("#userId").val() == 'Userid') {
        $("#errMsg").html('<span id="errMsg1" style="color: red"></span>');
                return false;
    } else {
        $("#userform").submit();
        return true;
    }
}
</script>
</head>
<body onload="resetPageView();">
<% 
	session = request.getSession(false);
	//String errorMsg = (String) session.getAttribute(AffiliateOrderConstants.ERROR_MSG);
	String errorMsg="";			
	String logoutFlag = request.getParameter("logout");
	if(logoutFlag!=null && logoutFlag.equals("true")){
	session = request.getSession();
	session.invalidate();
	errorMsg = "You have successfully logged out.";
	}
	if(errorMsg==null){errorMsg="";}
 %>
<div id="loginMasterDiv" class="loginMasterDiv">
		<div id="loginWelcomeImage" class="loginWelcomeImage">
			PSA Customer Login
		</div>
		<p>Please login to access the Application:</p>
		<form action="../PSA/PSAFormSubmit.htm" method="POST" id="loginForm">
			<input type="hidden" name="appName" value="AFFL">
			<table>
			<c:if test="${errorMessage ne  null}">
                        <%-- <p id="errMsg"><span style="color: red">${errorMessage}</span></p> --%>
                        <tr><td colspan="2" id="errMsg"><span style="color: red">${errorMessage}</span></td></tr>
                        </c:if>
                        <c:if test="${errorMessage eq  null}">
                        <p id="errMsg"></p>
                    </c:if>
				
				<tr style="height: 35px;">
					<td class="loginTableRight">UserName :</td>
					<td align="left">
					<input type="text" size="30px" id="userName" name="userName" style="width:175px;" autocomplete="off" >
					</td>
				</tr>
				<tr>
					<td class="loginTableRight">Password :</td>
					<td><input type="password" size="30px" id="password" name="password" style="width:175px;">
					</td>
				</tr>
			</table>
			<center><p><input type="submit" value="Login" onclick="validateLoginForm();">&#9;
						<input type="reset" value="Reset" onclick="resetPageView();"></p></center>
		</form>
	</div>
</body>
</html>