<%-- 
    Document   : employeemanage
    Created on : Mar 4, 2024, 9:21:22 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <link rel="icon" type="image/x-icon" href="Image/Los-pollos.ico">
        <title>Employees Manager</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h1 class="text-uppercase">Manage All Employees</h1>
                    <table class="table border form-radius">
                        <thead class="">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Full Name</th>
                                <th scope="col">Birth Date</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Salary</th>
                                <th scope="col">Position</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>HE180210</th>
                                <td>Tran Duy hung</td>
                                <td>29/02/2004</td>
                                <td>0904046388</td>
                                <td>3000$</td>
                                <td>IT Men</td>
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
    </body>
</html>
