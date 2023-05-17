<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- fn for Function -->

<%
	String[] cities = {"Montreal", "New-York", "Sydney"};
	pageContext.setAttribute("myCities", cities);
%>

<html>
<body>
	
	<c:set var="data" value="New-York, Toronto, Montreal, Ottawa" />
	
	<!-- fn:split(), splits a String into an array of substrings based on a delimiter.
		String[] split(String data, String delimiter) -->
		
	<h3>Split Demo:</h3>
	
	<c:set var="citiesArray" value="${fn:split(data, ',')}" />
	
	<c:forEach var="item" items="${citiesArray}">
		${item}  <br/>
	</c:forEach>
	
	
	
	<!-- fn:join(), concatenates a String array into single String based on a delimiter.
		String join(String[] data, String delimiter) -->	
		
	<h3>Join Demo:</h3>
	
	<c:set var="citiesArrayJoin" value="${fn:join(citiesArray, '*')}" />
	
	<b>The result of join:</b> ${citiesArrayJoin}
	
															
</body>
</html>

