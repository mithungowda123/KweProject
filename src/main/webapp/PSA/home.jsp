<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <%@page import="com.timeinc.tcs.AffiliateOrders.Utils.AffiliateOrderConstants"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
a.Createorder {
    color: #2da1c1;
    font-size: small;
    text-decoration: none;
    float: right;
}
a.Createorder:hover
{
    color: #f90;
    text-decoration: underline;         
}
</style>

<script>
/* function checkExist(){
    var xmlhttp = new XMLHttpRequest();
    var username = document.forms["regF"]["username"].value;
    var url = "../PSA/PSALookUp?accnum=" + username;
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if(xmlhttp.responseText == "User already exists")
                document.getElementById("isE").style.color = "red";
            else
                document.getElementById("isE").style.color = "green";
            document.getElementById("isE").innerHTML = xmlhttp.responseText;
        }
        
    };
    try{
    xmlhttp.open("GET",url,true);
    xmlhttp.send();
}catch(e){alert("unable to connect to server");
} */
</script>

</head>
<body>
<div id="containerDiv">
<jsp:include page="../common/header.jsp" />
<p>Welcome <c:out value="${username}" /></p>

<form action="../PSA/PSALookup.htm" method="POST" id="loginForm" name="regF">
  AccountNumber:<br>
    <input type="text" id="accnum" name="accnum"onblur="checkExist()"/><span id="isE"></span>
  <br>
  Zipcode:<br>
  <input type="text" id="zipcode" name="zipcode">
  <br>
   EffortKey:<br>
   <input type="text" id="Efk" name="Efk">
  <br>
  <tr><td>Title :</td>
			<td><select name="publisher">
				<option value="">-- Select Publisher --</option>
				<option value="HBR">Harvard</option>
				<option value="NG">NGS - NG</option>
				<option value="NF">NGS - NF</option>
				<option value="NW">New York</option>
				<option value="TI">Time Inc</option>
				<option value="KP">KWE - KP</option>
				<option value="KL">KWE - KL</option>
				<option value="KT">KWE - KT</option>
				<option value="KR">KWE - KR</option>
				<option value="KV">KWE - KV</option>
				<option value="KA">KWE - KA</option>
			</select></td></tr>
  <br>
  <input type="submit" value="Submit">
  
  <div class="content">
  <a class="Createorder" href="createneworder.jsp">CreateNewOrder</a>
  </div>
  
  
</form> 
  

<jsp:include page="../common/footer.jsp" />
</div>
</body>
</html>