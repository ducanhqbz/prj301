<%-- 
    Document   : addbook
    Created on : Mar 4, 2024, 1:31:51 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Category" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <link rel="icon" type="image/x-icon" href="Image/Los-pollos.ico">
        <title>Add A Book</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp" />
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Add New Books</h1>
                    <h1 style="color:red"></h1>
                    <form class="row bg-white form-radius" action="addbook">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" name="">Book Titles</label>
                                <input type="text" name="title" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" name="">Book ID</label>
                                <input type="text" name="book_id" class="form-control outline-none" required>
                            </div>
                        </div>                        
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Category</label>
                                <select name="category_id" class="form-control outline-none" aria-label="Large select example">
                                   
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Author's Name</label>
                                <input type="text" name="author" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Copies Available</label>
                                <input type="number" name="copies_owned" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Publication Year</label>
                                <input type="date" name="publication_date" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Publisher</label>
                                <input type="text" name="publisher" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Upload Pic</label>
                                <input type="file" name="url" class="form-control outline-none" required>
                            </div>
                        </div>
                        <div class="button-height">
                            <button type="submit" class="btn bg-dark text-white col-lg-2 ">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
