<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Book info</h2>
<br>

<form:form action="saveBook" modelAttribute="book" >

    <form:hidden path="id"></form:hidden>

    Name <form:input path="name"></form:input>
    <br><br>
    Author <form:input path="author"></form:input>
    <br><br>
    Price <form:input path="price"></form:input>
    <br><br>


    <input type="submit" value="OK">


</form:form>
</body>
</html>
