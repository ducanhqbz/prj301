<%-- 
    Document   : addStudent
    Created on : Mar 4, 2024, 10:04:21 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Add Employee</h1>

                    <form class="row bg-white form-radius">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">First Name</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Last Name</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Birth Date</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Username</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Password</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Phone</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Email</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Address</label>
                                <input type="password" class="form-control outline-none">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label  class="form-label">Choose File</label>
                                <input type="file" class="form-control outline-none">
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
