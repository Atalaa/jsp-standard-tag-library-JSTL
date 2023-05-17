<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- fn for Function -->

<%
	String[] cities = {"Montreal", "New-York", "Sydney"};
	pageContext.setAttribute("myCities", cities);
%>

<html>
<body>

	<c:set var="city">
		${myCities} <br/>
	</c:set>
	
	Length of the array is: ${fn:length(myCities)}
	
	<br />
	
	<c:set var="hello" value="HelloWorld" />
	
	Length of the string <b>${hello}</b> is: ${fn:length(hello)}
	
	<br />
	
	Uppercase version of the string <b>${hello}</b> is: ${fn:toUpperCase(hello)}
	
	<br />
	
	The string <b>${hello}</b> start with <b>Hel</b>?: ${fn:startsWith(hello, "Hel")}
															
</body>
</html>