<%-- 
    Document   : manageallbook
    Created on : Mar 4, 2024, 3:27:49 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.book" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <link rel="icon" type="image/x-icon" href="Image/Los-pollos.ico">
        <title>Manage All Books</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Manage All Books</h1>
                    <div class="form-padding">
                        <table class="table border form-radius">
                            <thead class="">
                                <tr>
                                    <th scope="col">Book ID</th>
                                    <th scope="col">Books's Title</th>
                                    <th scope="col">Author</th>
                                    <th scope="col">Publication Date</th>
                                    <th scope="col">Available Copies</th>
                                    <th scope="col">Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${empty listbook}">
                                    <tr><td colspan="7">No books found.</td></tr>
                                </c:if>


                                <c:forEach items="${requestScope.listbook}" var="x">
                                    <tr>
                                        <th scope="col">${x.getId()}</th>
                                        <th scope="col">${x.getTitle()}</th>
                                        <th scope="col">${x.getAuthor().firstName}</th>
                                        <th scope="col">${x.getPublicationDate()}</th>
                                        <th scope="col">${x.getCopiesOwned()}</th>
                                        <td>
                                            <a href="editBook?book_id=${x.getId()}" class="badge text-bg-success underline-none">Edit</a>
                                            <a href="deleteBook?book_id=${x.getId()}" onclick="return confirm('Are you sure you want to delete this item?');" class="badge text-bg-success underline-none">Remove</a>
                                        </td>
                                    </tr>
                                </c:forEach>




                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
