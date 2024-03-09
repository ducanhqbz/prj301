<%-- 
    Document   : bookloans
    Created on : Mar 4, 2024, 10:06:43 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Loans</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Manage Book Loans</h1>
                    <div class="form-padding">
                        <table class="table border form-radius">
                            <thead class="">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Book Titles</th>
                                    <th scope="col">Student ID</th>
                                    <th scope="col">Loans Date</th>
                                    <th scope="col">Due Date</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>9696</th>
                                    <td>Sex Education</td>
                                    <td>HE180210</td>
                                    <td>29/02/2023</td>
                                    <td>28/02/2024</td>
                                    <td><span class="badge text-bg-success">Not Return</span></td>
                                    <td>
                                        <span class="badge text-bg-success">Edit</span>
                                        <span class="badge text-bg-success">Remove</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
