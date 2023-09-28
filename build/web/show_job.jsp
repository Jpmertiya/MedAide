<%@page import="Entities.Message"%>
<%@page import="Helper.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataAccessObject.userDao"%>
<%@page import="Entities.posts"%>
<%@page import="Entities.ServiceProvider"%>
<%
    ServiceProvider s = (ServiceProvider) session.getAttribute("currentUser");
    if (s == null) {
        response.sendRedirect("login1.jsp");

    } else {
        System.out.println(s.getName());
        System.out.println(s.getEmail());
        System.out.println(s.getNumber());
    }
%>
<%
    int post_Id = Integer.parseInt(request.getParameter("job_id"));
    userDao dao = new userDao(connectionProvider.getConnection());
    posts p = dao.getJobByJobId(post_Id);

%>
<html>
    <head>
        <%@include file="imports.jsp" %>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getType()%></title>
        <style>
            .container{
                overflow: auto;
                margin-top: 2%;
                padding: 0px;


            }
            .sub-img1{
                border-radius: 10px;


                width: 550px;
                height: 300px;
                margin-bottom: 20px;
            }
            .back-btn i{
                width: 44px;
                height: 22px;
                transition: ease-in .4s;
            }
            .back-btn i:hover{
                transform: rotateX(6.2deg) rotateZ(-27.8deg);
                cursor: pointer;
                margin-right: 31px;
            }
            body{
                background: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0)),url("images/background.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>


        <!--post fetching-->
        <div class="container text-center  " aria-labelledby="exampleModalLongTitle" >
            <div class="card" style="background: transparent;">
                <div class="card-header" style="display: flex;">
                    <div class="back-btn text-left" style="width: 45%; justify-item:left;">

                        <i class="fa fa-mail-reply" onclick="history.back()" style="font-size:48px;color:red"></i>

                    </div>
                    <div class="text-left" style="width:55%;">
                        <h3  class="text-left">Job Detail</h3>
                    </div>
                </div>
                <div class="card-body">

                    <a  href="postImages/" download="<%=p.getPhoto()%>">
                        <%
                            if (p.getPhoto().equals("default.jpg")) {
                        %>
                        <img src="images/default1.jpg" alt="No image found for this job" class="card-img-top img-fluid sub-img1">
                        <%
                        } else {
                        %>
                        <img src="postImages/<%=p.getPhoto()%>" alt="No image found for this job" class="card-img-top img-fluid sub-img1">

                        <%
                            }
                        %>
                    </a>
                    <table class="table">

                        <tbody>
                            <tr>
                                <th scope="row">Type :</th>
                                <td><%=p.getType()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Duration :</th>
                                <td><%=p.getDuration()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Service Taker Name :</th>
                                <td><%=p.getName()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Service Taker Number :</th>
                                <td><%=p.getNumber()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Service Taker Address:</th>
                                <td><%=p.getLandmark() + "," + p.getCity() + "," + p.getState()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Service Taker Pincode :</th>
                                <td><%=p.getPincode()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Service Taker Email :</th>
                                <td><%=p.getEmail()%></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    <a href="notificationMessage_save?st_id=<%=p.getSt_id()%>" class="btn btn-outline-secondary  " >Accept</a> 
                </div>
            </div>
        </div>
    </body>
</html>
