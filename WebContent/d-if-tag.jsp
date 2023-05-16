<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- c for Core -->
<%@ page import="com.tagDemo.*, java.util.*" %>



<%
	Student s1 = new Student("John", "Doe", false);
	Student s2 = new Student("Jane", "Doe", true);
	Student s3 = new Student("Rocky", "Balboa", true);
	
	List<Student> studentList = new ArrayList<>();
	studentList.add(s1);
	studentList.add(s2);
	studentList.add(s3);
	
	//I have to set this value as an attribute on the page context
	pageContext.setAttribute("myStudents", studentList);
	
%>

<!-- When I write ${student.firstName}, behind the scenes, JSP will call student.getFirstName() -->

<html>
<body>
	
	<table border="1">
	
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		
		<c:forEach var="student" items="${myStudents}">
		
			<tr>
				<td>${student.firstName}</td>
				<td>${student.lastName}</td>
				<td>
					<c:if test="${student.goldCustomer}">
						Special Discount Offered
					</c:if>
					<c:if test="${!student.goldCustomer}">
						No Discount
					</c:if>
				</td>
			</tr>
			
		</c:forEach>
		
	</table>

</body>
</html>