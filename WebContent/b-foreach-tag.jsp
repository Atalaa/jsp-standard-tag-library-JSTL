<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- c for Core -->

<%
	String[] cities = {"Montreal", "New-York", "Sydney"};
	pageContext.setAttribute("myCities", cities);
%>

<html>
<body>

	<c:forEach var="city" items="${myCities}">
		${city} <br/>
	</c:forEach>

</body>
</html>