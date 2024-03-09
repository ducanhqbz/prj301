<%-- 
    Document   : navbar
    Created on : Mar 4, 2024, 10:58:42 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <link rel="stylesheet" href="CSS/header.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="offcanvas offcanvas-start nav_sidebar bg-dark text-white" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-body text-white">
                <ul class="navbar-nav me-auto my-2 my-lg-0" style="--bs-scroll-height: 100px;">
                    <li class="nav-item text-uppercase small bw-bold text-secondary">
                        Core
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp"><i class="fa-solid fa-gauge"></i> DashBroad</a>
                    </li>
                    <hr>
                    <li class="nav-item text-uppercase small bw-bold text-secondary">
                        Inventory
                    </li>

                    <!--Book Management-->



                    <a class="nav-link between" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class=""><i class="fa-solid fa-book"></i> Book Management</div>
                        <div class=""><i class="fa-solid fa-angle-down float-end icon-center"></i></div>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="navbar-nav ps-3">
                            <li>
                                <a href="displaycate" class="nav-link flex-left" > <div class="icon_wrapper"><i class="icon fa-solid fa-plus"></i></div><div>Add New Book</div></a>
                            </li>
                            <li>
                                <a href="ListAllBook" class="nav-link  flex-left"><div class="icon_wrapper"><i class="icon fa-solid fa-bars"></i></div><div>Manage All</div></a>
                            </li>
                        </ul>
                    </div>

                    <!--Student management--> 

                    <a class="nav-link between" data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class=""><i class="fa-solid fa-school"></i> Students Management</div>
                        <div class=""><i class="fa-solid fa-angle-down float-end icon-center"></i></div>
                    </a>
                    <div class="collapse" id="collapseExample2">
                        <ul class="navbar-nav ps-3">
                            <li>
                                <a href="addemployee.jsp" class="nav-link flex-left" ><div class="icon_wrapper"><i class="icon fa-solid fa-plus"></i></div><div>Add New Employee</div></a>
                            </li>
                            <li>
                                <a href="addstudent.jsp" class="nav-link flex-left" ><div class="icon_wrapper"><i class="icon fa-solid fa-plus"></i></div><div>Add New Student</div></a>
                            </li>
                            <li>
                                <a href="employeemanage.jsp" class="nav-link  flex-left"><div class="icon_wrapper"><i class="icon fa-solid fa-users"></i></div><div>Manage Employees</div></a>
                            </li>
                            <li>
                                <a href="studentmanage.jsp" class="nav-link  flex-left"><div class="icon_wrapper"><i class="icon fa-solid fa-users"></i></div><div>Manage Students</div></a>
                            </li>
                        </ul>
                    </div>
                    <hr>

                    <!--Loans Management--> 

                    <li class="nav-item text-uppercase small bw-bold text-secondary">
                        Business
                    </li>
                    <a class="nav-link between" data-bs-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class=""><i class="fa-solid fa-book"></i> Book Loans</div>
                        <div class=""><i class="fa-solid fa-angle-down float-end icon-center"></i></div>
                    </a>
                    <div class="collapse" id="collapseExample3">
                        <ul class="navbar-nav ps-3">
                            <li>
                                <a href="addbookloans.jsp" class="nav-link flex-left" > <div class="icon_wrapper"><i class="fa-solid icon fa-book-open-reader"></i></div><div>Add Book Loans</div></a>
                            </li>
                            <li>
                                <a href="bookloans.jsp" class="nav-link  flex-left"><div class="icon_wrapper"><i class="icon fa-solid fa-bars"></i></div><div>Manage</div></a>
                            </li>
                        </ul>
                    </div>

                    <!--Subscription Management--> 
                    <a class="nav-link between" data-bs-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class=""><i class="fa-solid fa-money-check"></i> Subscription</div>
                        <div class=""><i class="fa-solid fa-angle-down float-end icon-center"></i></div>
                    </a>
                    <div class="collapse" id="collapseExample4">
                        <ul class="navbar-nav ps-3">
                            <li>
                                <a href="" class="nav-link flex-left" > <div class="icon_wrapper"><i class="icon fa-solid fa-users"></i></div><div>Plans</div></a>
                            </li>
                            <li>
                                <a href="" class="nav-link  flex-left"><div class="icon_wrapper"><i class="icon fa-solid fa-bars"></i></div><div>Purchase History</div></a>
                            </li>
                        </ul>
                    </div>
                    <hr>

                    <!--Log Out--> 
                    <a class="nav-link between" data-bs-toggle="collapse" href="#" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class=""><i class="fa-solid fa-right-from-bracket"></i> Log Out</div>
                        <div class=""><i class="fa-solid fa-angle-down float-end icon-center"></i></div>
                    </a>
                </ul>
            </div>
        </div>
    </body>
</html>
