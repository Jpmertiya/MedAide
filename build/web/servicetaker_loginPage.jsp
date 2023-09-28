<%@page import="java.util.List"%>
<%@page import="Entities.Notification_message"%>
<%@page import="DataAccessObject.notification_messageDao"%>
<%@page import="Helper.connectionProvider"%>
<%@page import="Entities.Message"%>
<%@page import="Entities.serviceTaker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--to check wether a user login or not-->
<%
    serviceTaker s = (serviceTaker) session.getAttribute("currentUser");
    if (s == null) {
        response.sendRedirect("login1.jsp");
    } else {
        System.out.println(s.getName());
        System.out.println(s.getEmail());
        System.out.println(s.getNumber());

        int id = s.getId();
        notification_messageDao da = new notification_messageDao(connectionProvider.getConnection());
        List<Notification_message> q = da.getNotificationMessage(id);
        System.out.println(q);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <%@include file="imports.jsp" %>
        <link rel="stylesheet" href="nav_css.css">
        <script  src="js/resposive.js"></script>       

        <%@include file="imports.jsp" %>
        <link rel="stylesheet" href="nav_css.css">
        <script  src="js/resposive.js"></script>

        <style>
            .social a{
                text-decoration: none;
                width: 35px;
                height: 35px;
                border-radius: 50%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                background: rosybrown;
                font-size: 18px;
                color: black;
                margin-right: 22px;
                margin-bottom: 30px;
            }
            .social a i{
                color: maroon;
            }
            .social a:hover{
                transform: perspective(1000px) rotateX(14.56deg) rotateY(10.45deg) scale3d(1.3,1.3,1.5);
                box-shadow: 1px 2px 2px 1px black;
                text-decoration: none;
                transform: scale(1.2);
                background: rosybrown;
                transition: .5s;
            }
            .items{
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                grid-gap: 2rem;
                align-items: center;
                text-align:center;
            }
            .sub-box{
                padding: 45px 45px 45px 45px;
                transition: ease .30s;
                cursor: pointer;
            }
            .sub-img img{
                max-width:100%;
                width: 60px;
                height: auto;
                margin-bottom: 20px;
            }
            .sub-img1 img{
                border-radius: 10px;
                max-width:100%;
                /*                width: 60px;
                */height: 150px;
                margin-bottom: 20px;
            }
            .sub-box h3{
                margin-bottom: 10px;
                font-size: 24px;
                font-weight: 500;
            }
            .sub-box p{
                font-size: var(--p-font);
                color: var(--second-color);
                line-height: 30px;
            }
            .sub-box:hover{
                background: var(--bg-color);
                box-shadow: 18px 0px 87px 0px palegoldenrod;
                border-radius: 20px;
                /*	will-change: transform;*/
                transform: perspective(1000px) rotateX(4.80deg) rotateY(10.23deg) scale3d(1.05, 1.05, 1.05);
            }
            .sub-box1:hover{
                background: var(--bg-color);
                box-shadow: 2px 2px 7px 0px #ffb74d;
                border-radius: 20px;
                /*	will-change: transform;*/
                transform: perspective(1000px) rotateX(7.80deg) rotateY(0.23deg) rotateZ(0deg) scale3d(1.15, 1.15, 1.05);
            }

            .social_footer a{
                text-decoration: none;
                width: 65px;
                height: 55px;
                border-radius: 40%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                background: #f75023;
                color: gold;
                font-size: 28px;
                color: black;
                margin-right: 22px;
                margin-bottom: 30px;
                transition: .8s;
            }
            .social_footer a:hover{
                transform: perspective(1000px) rotateX(14.56deg) rotateY(10.45deg) scale3d(1.3,1.3,1.5);
                box-shadow: 1px 2px 2px 1px black;
                text-decoration: none;
                transform: scale(1.2);

                transition: .5s;
            }
            .rights_reserve{
                background: rgba(0,0,0,0.3);
                width: 100%;
                bottom: 0px;

            }
            .rights_reserve h3{
                font-size: 18px;
            }
            .contact{
                width: 100%;
                padding-left: 0;
                padding: 0px;
                padding-top: 17px;
                border: 5px double goldenrod;
                background: url("images/background.jpg");
                background-repeat: no-repeat;
                background-origin: border-box;
                background-position: inherit;
                background-size: cover;
                margin-top: 5%;
                /*margin-bottom: -5%;*/
                /*padding: 40px 80px;*/
                display: block;
                bottom: 0px;
                align-items: center;
                justify-content: center;
                text-align: center;
                border-radius: 18px;
            }
            .center h3{
                font-size: 25px;
                font-weight: 500;
                margin-bottom: 3px;
                color: black;
            }
            .center p{
                font-size: var(--p-font);
                color: black;
                line-height: 26px;
                margin-bottom: 30px;
                padding-right:15px ;
            }
            .contact .action form input[type="email"]{
                max-width: 100%;
                width: 600px;
                padding: 12px 15px;
                background: var(--bg-color);
                border: none;
                outline: none;
                margin: 0 10px 20px 0;
                border-radius: 30px;
                box-shadow: 3px 0 8px 3px rosybrown;
            }
            .contact .action form input[type="submit"]{
                padding: 12px 40px;
                background: var(--main-color);
                color: var(--bg-color);
                border: none;
                outline: none;
                margin: 0 10px 20px 0;
                border-radius: 30px;
                cursor: pointer;
                box-shadow: 5px 0 10px 4px rosybrown;
            }

            /*our team section*/
            .team{

                padding: 8% 0;
                position: relative;
                width: 100%;
                height: 100%;
                /*background: radial-gradient(#281c3e,#0f051d);*/
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            .team-content{
                width: 100%;
                max-width: 1350px;
                /*margin: 10px auto;*/
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(100px,auto));
                align-items: center;
                gap: 2rem;
                text-align: center;
                margin-top: 4rem;
            }
            .team-content img{
                width: 100%;
                height: 60%;
                border-radius: 20px;
                margin-bottom: 15px;
            }
            .center h1{
                color: #111111;
                font-size: 4rem;
                text-align: center;
            }
            .box{
                height: 100%;
                padding: 16px;
                background: #1b1229;
                border-radius: 15px;
                transition: all .4s ease-out;
            }
            .box h3{
                font-size: 23px;
                font-weight: 500;
                color: #fff;
                margin-bottom: 8px;
            }
            .box h5{
                font-size: 15px;
                font-weight: 500;
                color: #b7b4bb;
                margin-bottom: 15px;
                letter-spacing: 2px;
            }
            .box:hover{
                box-shadow: 12px 10px 8px 0px rosybrown;
                transform: translateY(-20px);
                cursor: pointer;
            }
            .sub-box a{
                text-decoration: none;
                color: black;
            }


            .show_job{
                text-decoration: none;
            }
            .card-body a{
                text-decoration: none;
            }
            .show_job h3 , h4 , p{
                text-decoration: none;
                background-color: transparent;
                color: black
            }
            .job-hover{
                transition: ease-in-out .6s;
            }
            .job-hover:hover{
                box-shadow: 12px 10px 8px 0px rosybrown;
                transform: translateY(-20px);
                cursor: pointer;
            }
            .social a{
                text-decoration: none;
                width: 35px;
                height: 35px;
                border-radius: 50%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                background: rosybrown;
                font-size: 18px;
                color: black;
                margin-right: 22px;
                margin-bottom: 30px;
            }
            .social a i{
                color: maroon;
            }
            .social a:hover{
                transform: perspective(1000px) rotateX(14.56deg) rotateY(10.45deg) scale3d(1.3,1.3,1.5);
                box-shadow: 1px 2px 2px 1px black;
                text-decoration: none;
                transform: scale(1.2);
                background: rosybrown;
                transition: .5s;
            }
            .items{
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                grid-gap: 2rem;
                align-items: center;
                text-align:center;
            }
            .sub-box{
                padding: 45px 45px 45px 45px;
                transition: ease .30s;
                cursor: pointer;
            }
            .sub-img img{
                max-width:100%;
                width: 60px;
                height: auto;
                margin-bottom: 20px;
            }
            .sub-box h3{
                margin-bottom: 10px;
                font-size: 24px;
                font-weight: 500;
            }
            .sub-box p{
                font-size: var(--p-font);
                color: var(--second-color);
                line-height: 30px;
            }
            .sub-box:hover{
                background: var(--bg-color);
                box-shadow: 18px 0px 87px 0px palegoldenrod;
                border-radius: 20px;
                /*	will-change: transform;*/
                transform: perspective(1000px) rotateX(4.80deg) rotateY(10.23deg) scale3d(1.05, 1.05, 1.05);
            }

            .contact{
                width: 100%;
                padding-left: 0;
                padding: 0px;
                padding-top: 17px;
                border: 5px double goldenrod;
                background: url("images/background.jpg");
                background-repeat: no-repeat;
                background-origin: border-box;
                background-position: inherit;
                background-size: cover;
                margin-top: 5%;
                /*margin-bottom: -5%;*/
                /*padding: 40px 80px;*/
                display: block;
                bottom: 0px;
                align-items: center;
                justify-content: center;
                text-align: center;
                border-radius: 18px;
            }
            .center h3{
                font-size: 25px;
                font-weight: 500;
                margin-bottom: 3px;
                color: black;
            }
            .center p{
                font-size: var(--p-font);
                color: black;
                line-height: 26px;
                margin-bottom: 30px;
                padding-right:15px ;
            }
            .contact .action form input[type="email"]{
                max-width: 100%;
                width: 600px;
                padding: 12px 15px;
                background: var(--bg-color);
                border: none;
                outline: none;
                margin: 0 10px 20px 0;
                border-radius: 30px;
                box-shadow: 3px 0 8px 3px rosybrown;
            }
            .contact .action form input[type="submit"]{
                padding: 12px 40px;
                background: var(--main-color);
                color: var(--bg-color);
                border: none;
                outline: none;
                margin: 0 10px 20px 0;
                border-radius: 30px;
                cursor: pointer;
                box-shadow: 5px 0 10px 4px rosybrown;
            }

            /*our team section*/
            .team{

                padding: 8% 0;
                position: relative;
                width: 100%;
                height: 100%;
                /*background: radial-gradient(#281c3e,#0f051d);*/
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            .team-content{
                width: 100%;
                max-width: 1350px;
                /*margin: 10px auto;*/
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(100px,auto));
                grid-template-columns: repeat(auto-fit, minmax(200px, auto));
                grid-gap: 2rem;
                align-items: center;
                gap: 2rem;
                text-align: center;
                margin-top: 4rem;
            }
            .team-content img{
                width: 100%;
                height: 60%;
                border-radius: 20px;
                margin-bottom: 15px;
            }
            .center h1{
                color: #111111;
                font-size: 4rem;
                text-align: center;
            }
            .box{
                height: 100%;
                padding: 16px;
                background: #1b1229;
                border-radius: 15px;
                transition: all .4s ease-out;
            }
            .box h3{
                font-size: 23px;
                font-weight: 500;
                color: #fff;
                margin-bottom: 8px;
            }
            .box h5{
                font-size: 15px;
                font-weight: 500;
                color: #b7b4bb;
                margin-bottom: 15px;
                letter-spacing: 2px;
            }
            .box:hover{
                box-shadow: 12px 10px 8px 0px rosybrown;
                transform: translateY(-20px);
                cursor: pointer;
            }
            .sub-box a{
                text-decoration: none;
                color: black;
            }



            .hoxhover:hover{
                background-color: rgba(0,0,0,0.2);
                height: 100%;
            }


            .social_footer a{
                text-decoration: none;
                width: 65px;
                height: 55px;
                border-radius: 40%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                background: #f75023;
                color: gold;
                font-size: 28px;
                color: black;
                margin-right: 22px;
                margin-bottom: 30px;
                transition: .8s;
            }
            .social_footer a:hover{
                transform: perspective(1000px) rotateX(14.56deg) rotateY(10.45deg) scale3d(1.3,1.3,1.5);
                box-shadow: 1px 2px 2px 1px black;
                text-decoration: none;
                transform: scale(1.2);

                transition: .5s;
            }
            .rights_reserve{
                background: rgba(0,0,0,0.3);
                width: 100%;
                bottom: 0px;

            }
            .rights_reserve h3{
                font-size: 18px;
            }

            @media all and (max-width:800px){
                .items{
                    display: grid;
                    grid-template-columns: repeat(2, 1fr);
                    grid-gap: 2rem;
                    align-items: center;
                    text-align:center;
                }
                .team-content{

                    display: grid;
                    grid-template-columns: repeat(2, 1fr);
                    align-items: center;
                    gap: 2rem;

                }
                .sub-img1 img{
                    max-width:100%;
                    width: 200px;
                    height: auto;
                    margin-bottom: 50px;
                }
            }
        </style>

    </head>
    <body>
        <!--to fetch navigation bar according to user detail-->
        <% if (s == null) {
                response.sendRedirect("login1.jsp");
            } else {
        %>
        <%@include file="ServiceTaker-navbar.jsp" %>
        <%
            }
        %>
        <!--end of navigation bar-->

        <!--to display message on profile update-->
        <%
            Message m = (Message) session.getAttribute("msg");
            Message m2 = (Message) session.getAttribute("savePostMsg");
            if (m != null) {

        %>
        <div  class="alert <%= m.getCssClass()%>" role="alert" style="top: 55px;z-index: 1001;height: 30px; justify-content: center;text-align: center;">
            <p ><%= m.getContent()%></p>
        </div>
        <%
            session.removeAttribute("msg");
        } else if (m2 != null) {
        %>
        <div  class="alert <%= m2.getCssClass()%>" role="alert" style="top: 55px;z-index: 1001;height: 30px; justify-content: center;text-align: center;">
            <p ><%= m2.getContent()%></p>
        </div>
        <%
                session.removeAttribute("savePostMsg");
            }

        %>
        <!--end of message-->

        <!--profile modal-->
        <div class="modal fade" id="profile-modal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="Heading-id" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header align-items-cente text-center" style="background-color: #f75023" >
                        <h5 class="modal-title  text-uppercase "  id="Heading-id">
                            MedAide
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="profile_pic/<%= s.getProfile()%>" style="max-width: 200px;min-height:20%; ;height: auto;border-radius: 50%;width: 100px;height:80px;" alt="No image found"/><br>
                            <h5 class="mt-3 text-uppercase"><%= s.getName()%> </h5>

                            <!--basic details-->
                            <div id="profile-detail">

                                <table class="table table-hover" style="background-color:#ao9dab">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID:</th>
                                            <td><%= s.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email:</th>
                                            <td><%= s.getEmail()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">DOB:</th>
                                            <td><%= s.getDOB()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender:</th>
                                            <td><%= s.getGender()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Number:</th>
                                            <td><%= s.getNumber()%></td>
                                        </tr>

                                        <tr>
                                            <th scope="row"><%= s.getID_type()%></th>
                                            <td><%= s.getID_number()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!--profile edit-->
                            <div id="profile-edit" style="display: none;">
                                <h3 class="mt-3">Please Edit carefully</h3>
                                <form action="editServiceTakerServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <th scope="row">ID:</th>
                                            <td><%= s.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Name:</th>
                                            <td><input name="user-name" required="" class="form-control" type="text" value="<%= s.getName()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Occupation:</th>
                                            <td><input name="additional-number" required="" class="form-control" type="text" value="<%= s.getOccupation()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Password:</th>
                                            <td><input name="password" required="" class="form-control" type="text" value="<%= s.getNumber()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">New Profile Pic:</th>
                                            <td><input type="file" name="image" class="form-control" required=""></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">District:</th>
                                            <td><input name="district" required="" class="form-control" type="text" value="<%= s.getDistrict()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">State:</th>
                                            <td><input name="state" required="" class="form-control" type="text" value="<%= s.getState()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Landmark:</th>
                                            <td><input name="landmark" required="" class="form-control" type="text" value="<%= s.getLandmark()%>"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Block_number:</th>
                                            <td><input name="Block_number" required="" class="form-control" type="text" value="<%= s.getBlock_number()%>"></td>
                                        </tr>
                                    </table>
                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="closed">Close</button>
                        <button type="button" id="edit-profile-button" class="btn btn-primary"><i class="fa fa-edit" id="icon"></i></button>
                    </div>
                </div>
            </div>
        </div>
        <!--end of profile modal-->


        <!--all content of main page-->


        <!--fetch message from database-->

        <div class="modal fade" id="message-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog right">
                <div class="modal-content">

                    <div class="modal-body" >
                        <table class="table table-hover" style="background-color:#ao9dab" id="post-container">

                        </table>
                    </div>

                </div>
            </div>
        </div>

        <!--end of fetching messages from databese-->

        <!-- sub services -->
        <section class="sub-service" id="service">
            <h5 style="color: #f75023;justify-content: center;text-align: center;">
                Services provided by US:</h5>
            <div class="items">

                <!--start of post modal-->
                <div class="modal fade" id="post-modal1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Companion</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service1.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Companion" readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>duration</th>
                                                <td><select class="form-control" name="duration">
                                                        <option>2 hour</option>
                                                        <option>6 hour</option>
                                                        <option>12 hour</option>
                                                        <option>24 hour</option>
                                                    </select>
                                                </td>
                                            </tr>   

                                            <tr>
                                                <th>Gender</th>
                                                <td class="form-contro">
                                                    <input type="radio" id="male" checked name="male" class="form-contro"> male &nbsp
                                                    <input type="radio" id="male" name="male" class="form-contro"> female &nbsp
                                                    <input type="radio" id="male" name="male" class="form-contro">  other &nbsp
                                                </td>
                                            </tr>   

                                        </table>
                                        <button class=" btn btn-outline-secondary" type="submit" title="nahi ho raha hai kya">Request For Service</button>
                                    </form>
                                </section>
                            </div>
                            <div class="modal-footer">

                            </div>
                        </div>
                    </div>
                </div>
                <!--end of post modal-->


                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#post-modal1">
                        <div class="sub-img">
                            <img src="images/service1.png">
                        </div>
                        <h3>Companion</h3>
                        <p>Our agent can help in household services, shoping partner, gardening, etc.</p>
                    </a>
                </div>


                <!--start of post modal-->
                <div class="modal fade" id="post-modal2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Medicine Delivery</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service2.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Medicine Delivery" readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>duration</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="duration" value="As soo As Possible" readonly>

                                                </td>
                                            </tr>   
                                            <tr>
                                                <th>Prescription Image</th>
                                                <td><input type="file" class="form-control" title="upload prescription image carefully" name="image" required ></td>
                                            </tr>

                                        </table>
                                        <button class=" btn btn-outline-secondary" type="submit">Request For Service</button>
                                    </form>
                                </section>
                            </div>
                            <div class="modal-footer">

                            </div>
                        </div>
                    </div>
                </div>
                <!--end of post modal-->
                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#post-modal2">
                        <div class="sub-img">  
                            <img src="images/service2.png">
                        </div>
                        <h3>Medicine Delivery</h3>
                        <p>Our agent will bring medicine according to prescription.</p>
                    </a>
                </div>



                <!--start of post modal-->
                <div class="modal fade" id="post-modal3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Home Service</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service3.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Home Service" readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>duration</th>
                                                <td><select class="form-control" name="duration">
                                                        <option>2 hour</option>
                                                        <option>6 hour</option>
                                                        <option>12 hour</option>
                                                        <option>24 hour</option>
                                                    </select>
                                                </td>
                                            </tr>   

                                            <tr>
                                                <th>Gender</th>
                                                <td class="form-contro">
                                                    <input type="radio" id="male" name="male" checked class="form-contro"> male &nbsp;
                                                    <input type="radio" id="male" name="male" class="form-contro"> female &nbsp;
                                                    <input type="radio" id="male" name="male" class="form-contro">  other &nbsp;
                                                </td>
                                            </tr>   

                                        </table>
                                        <button class=" btn btn-outline-secondary" type="submit" title="nahi ho raha hai kya">Request For Service</button>
                                    </form>
                                </section>
                            </div>
                            <div class="modal-footer">

                            </div>
                        </div>
                    </div>
                </div>

                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#post-modal3">
                        <div class="sub-img">               
                            <img src="images/service3.png">               
                        </div>
                        <h3>Home service</h3>
                        <p>Our medical agent will give treatment according to condition.</p>
                    </a>

                </div>


                <!--start of post modal-->
                <div class="modal fade" id="post-modal4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Urgent Care</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service4.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Urgent Care" readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>duration</th>
                                                <td><select class="form-control" name="duration">
                                                        <option>2 hour</option>
                                                        <option>6 hour</option>
                                                        <option>12 hour</option>
                                                        <option>24 hour</option>
                                                    </select>
                                                </td>
                                            </tr>   
                                            <tr>
                                                <th>Type</th>
                                                <td><select class="form-control" name="types">
                                                        <option>Need ambulance</option>
                                                        <option>Nurse</option>
                                                        <option>TeleHealth</option>
                                                        <option>Companion</option>
                                                    </select>
                                                </td>
                                            </tr>   

                                        </table>
                                        <p>*extra charges will apply</p>
                                        <button class=" btn btn-outline-secondary" type="submit">Request For Service</button>
                                    </form>
                                </section>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#post-modal4">
                        <div class="sub-img">
                            <img src="images/service4.png">
                        </div>
                        <h3>Urgent Care</h3>
                        <p>Our agent will try their best to provide you Aid ASAP</p>
                    </a>
                </div>

                <!--start of post modal-->
                <div class="modal fade" id="post-modal5" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">TeleHealth</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service7.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <input type="hidden" value="ASAP" name="duration">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Tele Health" readonly>
                                                </td>
                                            </tr>
                                            
                                            

                                        </table>
                                        <p>*our agent(doctor) will connect with you on whatsapp video call as per provided contact number(+91 <%= s.getNumber()%>)</p>
                                        <button class=" btn btn-outline-secondary" type="submit">Request For Service</button>
                                    </form>
                                </section>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <A href="" data-bs-toggle="modal" data-bs-target="#post-modal5">
                        <div class="sub-img">
                            <img src="images/service7.png">
                        </div>
                        <h3>Telehealth Services:</h3>
                        <p>Our agent will provide virtual services.</p>
                    </a>
                </div>


                <!--start of post modal-->
                <div class="modal fade" id="post-modal6" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Companion</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service1.png" style="width: 300px;width: 300px;">
                                </div>

                                <section class="companion">
                                    <form method="post" class="justify-content-center" action="Post" enctype="multipart/form-data">
                                        <table class="table">
                                            <tr>
                                                <th>Selected</th>
                                                <td>
                                                    <input  class="form-control" type="text" name="type" value="Travel Companion" readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>duration</th>
                                                <td><select class="form-control" name="duration">
                                                        <option>less than 24 hour</option>
                                                        <option>Less than 3 day</option>
                                                        <option>Less than 5 day</option>
                                                        <option>more than a week</option>
                                                    </select>
                                                </td>
                                            </tr>   
                                            <tr>
                                                <th>Destination</th>
                                                <td><select class="form-control" name="destination">
                                                        <option>In the city</option>
                                                        <option>In the State</option>
                                                        <option>In the country</option>
                                                        <option>Out of country</option>
                                                    </select>
                                                </td>
                                            </tr>   

                                            <tr>
                                                <th>Gender</th>
                                                <td class="form-contro" style="display: inline-flex">
                                                    <input type="radio" id="male" checked name="male" class="form-contro"> male
                                                    <input type="radio" id="male" name="male" class="form-contro"> female
                                                    <input type="radio" id="male" name="male" class="form-contro">  other
                                                </td>
                                            </tr>   

                                        </table>
                                        <button class=" btn btn-outline-secondary">Request For Service</button>
                                    </form>
                                </section>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="sub-box" >
                    <A href="" data-bs-toggle="modal" data-bs-target="#post-modal6">
                        <div class="sub-img">
                            <img src="images/service6.png">
                        </div>
                        <h3>Travel companion</h3>
                        <p>Our agent will drop you to your destination.</p>
                    </A>
                </div>

            </div>
        </section>


         <!--fetching all jobs detail from database-->
            <div class="team" >
                <div class="center mb-4">
                    <h1>Request history</h1>
                </div>
                <div class="container text-center fa-spin " id="loader">
                    <i class="fa fa-refresh fa-4x"></i>
                </div>

                <div class="container fluid " id="post-container1">

                </div>
            </div>
        <!-- Contact -->
        <section class="contact" id="contact">
            <div class="center">
                <h3>Connect with us</h3>
                <p>on other platforms</p>
            </div>
            <div class="action">
                <div class="social_footer">
                    <a href="$"><i class='bx bxl-facebook-circle'></i></a>
                    <a href="$"><i class='bx bxl-linkedin' ></i></a>
                    <a href="$"><i class='bx bxl-github' ></i></a>
                    <a href="$"><i class='bx bxl-whatsapp' ></i></a>
                </div>
            </div>
            <div class="rights_reserve">
                <h3>@2023 All rights reserved...</h3>
            </div>
        </section>

        <!-- to make text floating -->
        <script src="https://unpkg.com/scrollreveal"></script>

        <!-- external js -->
        <script type="text/javascript" src="javaScript.js"></script>
        <!--end of main page content-->



        <!--this is to toggle edit profile and profile detail-->
        <script>
            $(document).ready(function () {
                let editStatus = false;
                $('#closed').click(function () {
                    $('#profile-detail').show();
                    $('#profile-edit').hide();
                });
                $('#edit-profile-button').click(function () {
                    if (!editStatus) {
                        $('#profile-detail').hide();
                        $('#profile-edit').show();
                        $('#icon').removeClass("fa fa-edit")
                        $('#icon').addClass("fa fa-reply");


                        editStatus = true;
                    } else {
                        $('#profile-detail').show();
                        $('#profile-edit').hide();
                        $('#icon').removeClass("fa fa-reply")
                        $('#icon').addClass("fa fa-edit");
                        $('#edit-profile-button').tex
                        editStatus = false;
                    }
                });
            });
        </script>
        <!--end of toggle-->

        <!--loading messages using ajax from load_message -->
        <script>
            $(document).ready(function (e) {
                let n =
                        $.ajax({
                            url: "load_messages.jsp?st_id=",
                            success: function (data, textStatus, jqXHR) {
                                console.log(data);
                                $("#post-container").html(data);
                            }
                        });
            });
        </script>

        <!--loading post using ajax from load_post-->
        <script>
            $(document).ready(function (e) {
                $.ajax({
                    url: "load_post2.jsp",
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container1").html(data);
                    }
                });
            });
        </script>
    </body>
</html>
