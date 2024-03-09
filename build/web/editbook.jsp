<%-- 
    Document   : editbook
    Created on : Mar 7, 2024, 3:56:19 AM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <title>Edit Book</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp"/>
        
        <!-- Use the bookedit object passed from the servlet -->
        <c:set var="x" value="${requestScope.bookedit}"></c:set>
        
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Edit Books</h1>
                    <!-- The form must have enctype for file upload -->
                    <form class="row bg-white form-radius" action="editbook" method="post" enctype="multipart/form-data">
                        
                        <!-- Book Title -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Book Title</label>
                                <input type="text" name="title" value="${x.title}" class="form-control outline-none">
                            </div>
                        </div>
                        
                        <!-- Book ID (readonly as it should not be editable) -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Book ID</label>
                                <input type="text" name="book_id" value="${x.id}" readonly class="form-control outline-none">
                            </div>
                        </div>                        
                        
                        <!-- Category Dropdown -->
                        <div class="mb-3">
                            <label class="form-label">Category</label>
                            <select name="category_id" class="form-control outline-none" aria-label="Large select example">
                                <!-- Iterating over categories for dropdown options -->
                                <% List<Category> categories = (List<Category>) request.getAttribute("cateall");
                                   for (Category category : categories) {
                                %>
                                    <option value="<%= category.getId() %>"><%= category.getCategoryName() %></option>
                                <% } %>
                            </select>
                        </div>

                        <!-- Author's Name -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Author's Name</label>
                                <!-- Assuming the author attribute has a getter for firstName -->
                                <input type="text" name="author" value="${x.author.firstName}" class="form-control outline-none" required>
                            </div>
                        </div>
                        
                        <!-- Copies Available -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Copies Available</label>
                                <input type="number" name="copies_owned" value="${x.copiesOwned}" class="form-control outline-none" required>
                            </div>
                        </div>
                        
                        <!-- Publication Year -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Publication Year</label>
                                <input type="text" name="publication_date" value="${x.publicationDate}" class="form-control outline-none" required>
                            </div>
                        </div>
                     
                        <!-- File Upload for Book Cover -->
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Upload Book Cover</label>
                                <input type="file" name="url" class="form-control outline-none" required>
                            </div>
                        </div>
                        
                        <!-- Submit Button -->
                        <div class="button-height">
                            <button type="submit" class="btn bg-dark text-white col-lg-2">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
