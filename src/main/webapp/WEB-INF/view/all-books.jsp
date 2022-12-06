<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>Library</h2>
<br>

<table border="1" width="600">
    <tr>
        <th>Name</th>
        <th>Author</th>
        <th>Price</th>
        <th>Operations</th>
    </tr>                 <%--Создаем строку с заголовками--%>

    <c:forEach var="book" items="${allBooks}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="bookId" value="${book.id}"></c:param>

        </c:url>

        <c:url var="deleteButton" value="/deleteBook">
            <c:param name="bookId" value="${book.id}"></c:param>

        </c:url>
        <tr>
            <td>${book.name}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td align="center">
                <input type="button" value="Update"
                       onclick="window.location.href='${updateButton}'">
                <input type="button" value="Delete"
                       onclick="window.location.href='${deleteButton}'">
            </td>

        </tr>

    </c:forEach>         <%--В forEach loop создаем по строке для каждого работника, куда помещаем данные.--%>


</table>
<br>

<input type="button" value="Add"
       onclick="window.location.href ='addNewBook' "/>
</body>
</html>
