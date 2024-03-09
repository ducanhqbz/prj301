<%-- 
    Document   : home
    Created on : Mar 3, 2024, 9:25:16 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome To Los Pollos Hermanos</title>
        <link rel="stylesheet" href="CSS/Root.css"/>
        <link rel="stylesheet" href="CSS/CSS.css"/>
        <link rel="icon" type="image/x-icon" href="Image/Los-pollos.ico">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="navbar.jsp"/>
        <div class="content">
            <div class="content-part">
                <div class="container-fluid">
                    <h2 class="text-uppercase fw-bold">Dashboard</h2>
                    <p>Statistic Of Dashboard</p>
                    <div class="row row-gap-3">
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h5 class="card-title text-uppercase text-secondary">Card title</h5>
                                    <h1 class="">130</h1>
                                    <a href="#" class="underline-none">View More</a>
                                </div>          
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h5 class="card-title text-uppercase text-secondary">Card title</h5>
                                    <h1 class="">130</h1>
                                    <a href="#" class="underline-none">View More</a>
                                </div>          
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h5 class="card-title text-uppercase text-secondary">Card title</h5>
                                    <h1 class="">130</h1>
                                    <a href="#" class="underline-none">View More</a>
                                </div>          
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h5 class="card-title text-uppercase text-secondary">Card title</h5>
                                    <h1 class="">130</h1>
                                    <a href="#" class="underline-none">View More</a>
                                </div>          
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-part">              
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="recent-student" data-bs-toggle="tab" data-bs-target="#recent-student-pane" type="button" role="tab" aria-controls="recent-student-pane" aria-selected="true">New Students</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="recent-loans-tab" data-bs-toggle="tab" data-bs-target="#recent-loans-tab-pane" type="button" role="tab" aria-controls="recent-loans-tab-pane" aria-selected="false">Recent Loans</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="recent-sub-tab" data-bs-toggle="tab" data-bs-target="#recent-sub-tab-pane" type="button" role="tab" aria-controls="recent-sub-tab-pane" aria-selected="false">Recent Subscription</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">

                    <!--Student Management--> 

                    <div class="tab-pane fade show active" id="recent-student-pane" role="tabpanel" aria-labelledby="recent-student" tabindex="0">
                        <table class="table border-start border-end">
                            <thead class="">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Telephone Number</th>
                                    <th scope="col">Registered On</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>180210</th>
                                    <td>Name</td>
                                    <td>0904329370</td>
                                    <td>10-05-2003,10:15</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!--Loans Management--> 
                    <div class="tab-pane fade" id="recent-loans-tab-pane" role="tabpanel" aria-labelledby="recent-loans-tab" tabindex="0">
                        <table class="table border-start border-end">
                            <thead class="">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Book Name</th>
                                    <th scope="col">Student ID</th>
                                    <th scope="col">Loan Date</th>
                                    <th scope="col">Due Date</th>
                                    <th scope="col">Book Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>0132</th>
                                    <td>The Jungle Man</td>
                                    <td>HE180210</td>
                                    <td>10-05-2023</td>
                                    <td>10-02-2024</td>
                                    <td>
                                        <span class="badge text-bg-success">Success</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>



                    <div class="tab-pane fade" id="recent-sub-tab-pane" role="tabpanel" aria-labelledby="recent-sub-tab" tabindex="0">
                        <table class="table border-start border-end">
                            <thead class="">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Student Name</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Start Date</th>
                                    <th scope="col">End Date</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>0132</th>
                                    <td>Donald Trump</td>
                                    <td>500$</td>
                                    <td>25-05-2023</td>
                                    <td>10-02-2024</td>
                                    <td>
                                        <span class="badge text-bg-success">Success</span>
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
