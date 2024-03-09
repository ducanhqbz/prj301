<%-- 
    Document   : addbookloans
    Created on : Mar 4, 2024, 9:38:46 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <title>Add Book Loans</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Create New Book Loans</h1>
                    <form class="row bg-white form-radius">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" name="">Book ID</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Student's ID</label>
                                <input type="password" class="form-control outline-none">
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
