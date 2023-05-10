<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<html>
<body>

	<c:set var="stuff" value="<%= new java.util.Date() %>"/>
	
	Time on the server is: <c:out value="${stuff}"/>
	Time on the server is: ${stuff}
	

</body>
</html>