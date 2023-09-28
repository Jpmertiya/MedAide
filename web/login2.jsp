<%@page import="Entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="imports.jsp" %>
        <style>
            body{
                margin:0;
                font:600 16px/18px 'Open Sans',sans-serif;
                overflow-y: hidden;
            }
            *,:after,:before{
                box-sizing:border-box
            }
            .clearfix:after,.clearfix:before{
                content:'';
                display:table
            }
            .clearfix:after{
                clear:both;
                display:block
            }

            .sec{
                width: 100%;
                padding: 0px;
                margin: 0px;
                display: inline-flex
            }
            .left_sec{
                right: 0px;

                width: 50%;
                padding: 0px;
                margin: 40px;
                padding-top: 2%;
            }
            .right_sec{
                left: 0px;
                width: 60%;
                margin: 40px;
                padding: 0px;
                padding-top: 1%;

            }


            a{
                color:inherit;
                text-decoration:none
            }

            .login-wrap{
                overflow-y: hidden;
                overflow-x: hidden;
                width:100%;
                height: 60%;
                margin:auto;
                margin-top: 6%;
                max-width:625px;
                min-height:700px;
                position:relative;
                /*background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;*/

                background: url("images/background.jpg");
                background-size: cover;
                box-shadow:0 3px 6px 0  goldenrod;
            }
            .login-html{

                /*margin-top: 20%;*/
                width:100%;
                height:60%;
                position:absolute;
                padding:40px 70px 50px 70px;

            }
            .login-html .sign-in-htm,
            .login-html .sign-up-htm{
                top:4%;
                left:0;
                right:0;
                bottom:0;
                position:absolute;
                transform:rotateY(180deg);
                backface-visibility:hidden;
                transition:all .4s linear;
            }
            .login-html .sign-in,
            .login-html .sign-up,
            .login-form .group .check{
                display:none;
            }
            .login-html .tab,
            .login-form .group .label,
            .login-form .group .button{
                text-transform:uppercase;
                color: black;
            }
            .login-html .tab{

                font-size:22px;
                margin-right:15px;
                padding-bottom:5px;
                margin:0 15px 10px 0;
                display:inline-block;
                border-bottom:2px solid transparent;
            }
            .login-html .sign-in:checked + .tab,
            .login-html .sign-up:checked + .tab{
                color:goldenrod;

                border-color:#1161ee;
            }
            .login-form{
                min-height:385px;
                position:relative;
                perspective:1000px;
                transform-style:preserve-3d;
            }
            .login-form .group{
                margin:30px 10px;
            }
            .login-form .group .label,
            .login-form .group .input,
            .login-form .group .button{
                width:100%;
                /*color:#fff;*/
                /*text-transform: uppercase;*/
                display:block;
            }
            .login-form .group .input,
            .login-form .group .button{
                /*border:none;*/
                padding:15px 20px;
                border-radius:25px;
                background:rgba(255,255,255,.1);
            }
            .login-form .group input[data-type="password"]{
                text-security:circle;
                -webkit-text-security:circle;

            }
            .login-form .group .label{
                /*color:#aaa;*/
                color: black;
                font-size:16px;
                margin-top: 17px;
                margin-bottom: 5px;
            }
            .login-form .group .button{
                background:#1161ee;
            }
            .login-form .group label .icon{
                width:15px;
                height:15px;
                border-radius:2px;
                position:relative;
                display:inline-block;
                background:rgba(5,5,25,.4);


            }
            .login-form .group label .icon:before,
            .login-form .group label .icon:after{
                content:'';
                width:10px;
                height:2px;
                background:#fff;
                position:absolute;
                transition:all .2s ease-in-out 0s;

            }
            .login-form .group label .icon:before{
                left:3px;
                width:5px;
                bottom:6px;
                transform:scale(0) rotate(0);

            }
            .login-form .group label .icon:after{
                top:6px;
                right:0;
                transform:scale(0) rotate(0);
            }
            .login-form .group .check:checked + label{
                color:#fff;
                color: black;

            }
            .login-form .group .check:checked + label .icon{
                background:#1161ee;
            }
            .login-form .group .check:checked + label .icon:before{
                transform:scale(1) rotate(45deg);
            }
            .login-form .group .check:checked + label .icon:after{
                transform:scale(1) rotate(-45deg);
            }
            .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
                transform:rotate(0);
            }
            .login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
                transform:rotate(0);
            }

            .hr{
                height:2px;
                margin:60px 0 50px 0;
                background:rgba(255,255,255,.2);
            }
            .foot-lnk{
                text-align:center;
            }
            .foot-lnk a{
                font-size: 22px;
            }
            .splogin, .stlogin{
                justify-content: center;
                text-align: center;
                text-transform: uppercase;
                margin: 10px 0;
            }
        </style>
    </head>
    <body style="background: url(images/login_bg.jpg); background-size: cover;">
        <%@include file="login-navbar.jsp" %>
        <section class="sec">
            <section class="left_sec">
                <div class="back-btn text-left" style="width: 45%; justify-item:left;">

                    <i class="fa fa-mail-reply" onclick="history.back()" style="font-size:48px;color:red"></i>

                </div>
                <div class="login-wrap">
                    <div class="login-html">
                        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Welcome to medaide</label>
                        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
                        <div class="login-form">
                            <%
                                Message m = (Message) session.getAttribute("msg");
                                if (m != null) {

                            %>
                            <div  class="alert <%= m.getCssClass()%>" role="alert" style="margin-top: 0px;">
                                <%= m.getContent()%>
                            </div>
                            <%
                                    session.removeAttribute("msg");
                                }
                            %>
                            <div class="sign-in-htm" style="margin-top: 30px;">
                                <form action="serviceProvider_loginServlet" method="POST">
                                    <h2 class="splogin" style="margin-top: 12px;">Agent Login</h2>
                                    <div class="group">
                                        <label for="user" class="label">Username</label>
                                        <input id="user" name="email" type="text" class="input" title="enter your email address">
                                    </div>
                                    <div class="group">
                                        <label for="pass" class="label">Password</label>
                                        <input id="pass" name="password" type="password" class="input" data-type="password" title="enter your password">
                                    </div>
                                    <div class="group">

                                        <label ><b>*</b> your phone number is your password</label>
                                    </div>
                                    <div class="group">
                                        <!--<input type="submit" class="button" value="Sign In">-->
                                        <button type="submit" class="button">Log IN</button>
                                    </div>
                                    <div class="hr"></div>
                                    <div class="foot-lnk">
                                        <a href="sign2.jsp">Create Account?</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="right_sec">
                <div class="home-img">
                    <img src="images/cartoon doctor.png" style="max-width: 100%; width:auto; height: 60%;" />
                </div>
            </section>
        </section>

    </body>
</html>
