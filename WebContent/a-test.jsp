<!-- Every page that uses the Core tags must include this reference: -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- The uri it's not a real connection to the internet to make use of this tag library.

It's simply a unique identifier that associates my tag and the jar files in my file system -->

<%@ page import="java.util.*" %>

<html>
<body>

	<c:set var="stuff" value="<%= new java.util.Date() %>"/>

	Time on the server is: <c:out value="${stuff}"/>
	Time on the server is: ${stuff}

</body>

</html>