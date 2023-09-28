

<%@page import="Entities.serviceTaker"%>
<%@page import="Entities.Notification_message"%>
<%@page import="Helper.connectionProvider"%>
<%@page import="DataAccessObject.notification_messageDao"%>
<!--to check wether a user login or not-->
<%
    serviceTaker s = (serviceTaker) session.getAttribute("currentUser");
    if (s == null) {
        response.sendRedirect("login1.jsp");
    } else {
        System.out.println(s.getName());
        System.out.println(s.getEmail());
        System.out.println(s.getNumber());
    }
    int m_id = Integer.parseInt(request.getParameter("m_id"));
    System.out.println("message id is after fatching" + m_id);
%>
<%
    int post_Id = Integer.parseInt(request.getParameter("m_id"));
    notification_messageDao nf = new notification_messageDao(connectionProvider.getConnection());
    Notification_message n = nf.getNotificationMessageByMessageId(m_id);
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="imports.jsp" %>
        <link rel="stylesheet" href="nav_css.css">
        <script  src="js/resposive.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .container{
                overflow: auto;
                margin-top: 7%;
                padding: 0px;
            }
            .sub-img1{
                border-radius: 10px;
                width: 250px;
                height: 150px;
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
        <div class="container text-center  " aria-labelledby="exampleModalLongTitle" >
            <div class="card" style="background: transparent;">
                <div class="card-header" style="display: flex;">
                    <div class="back-btn text-left" style="width: 45%; justify-item:left;">

                        <i class="fa fa-mail-reply" onclick="history.back()" style="font-size:48px;color:red"></i>

                    </div>
                    <div class="text-left" style="width:55%;">
                        <h3  class="text-left">Detail</h3>
                    </div>
                </div>
                <div class="card-body">
                    <a  href="postImages/" download="<%= n.getProfile()%>" >
                        <%
                            if (n.getProfile().equals("default.jpg")) {
                        %>
                        <img src="images/default1.jpg" class="card-img-top" style="width: 500px;height: 300px;">
                        <%
                        } else {
                        %>
                        <img src="images/<%=n.getProfile() %>" class="card-img-top" style="width: 500px;height: 300px;">
                        <%
                        }%>
                    </a>
                    <table class="table">

                        <tbody>
                            <tr>
                                <th scope="row">Name of service provider :</th>
                                <td><%= n.getName()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Number of service provider :</th>
                                <td><%= n.getNumber()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Additional Number :</th>
                                <td><%= n.getAdditional_number()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Email of service provider :</th>
                                <td><%= n.getEmail()%></td>
                            </tr>

                            <tr>
                                <th scope="row">Gender:</th>
                                <td><%= n.getGender()%></td>
                            </tr>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
