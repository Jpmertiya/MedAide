<%@page import="DataAccessObject.userDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.serviceTaker"%>
<%@page import="Entities.ServiceProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MedHelp</title>
        <%@include file="imports.jsp" %>
        <link rel="stylesheet" href="nav_css.css">
        <script  src="js/resposive.js"></script>
        <style>
            
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
            .social a{
                text-decoration: none;
                width: 55px;
                height: 45px;
                border-radius: 40%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                background: #f75023;
                font-size: 28px;
                color: black;
                margin-right: 22px;
                margin-bottom: 30px;
            }
            .social a i{
                color: black;

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
                grid-template-columns: repeat(3,1fr);
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
                max-width:100%;
                width: 200px;
                height: auto;
                margin-bottom: 50px;
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
                /*margin-bottom: 30px;*/
                padding-right:15px ;
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
            .button-make{

                justify-content: center;
            }
            .modal-footer a{
                text-decoration: none;
                color: red;
            }
            .modal-footer{
                justify-content: center;
            }
            .home_login{

            }
            .home-text a{

                text-decoration: none;
            }
        </style>
    </head>
    <body>



        <div class="navbar">
            <%@include file="navbar1.jsp" %>
        </div>

        <!-- Home page -->
        <section class="home" id="home">
            <div class="home-text">
                <h3>Here To Care</h3>
                <h1 style="font-size: 155px;"><span style="color:red;">M</span>ed<span style="color:red;">A</span>ide</h1>
                <h2>Medical web based Site<span> from India</span></h2>
                <p>We are mediator between Service Provide and Service Taker </p>
                <div class="social">
                    <a href="https://in.linkedin.com/in/kartik-sharma-842795182"><i class='bx bxl-facebook-circle'></i></a>
                    <a href="https://www.linkedin.com/in/mayank-sharma-560598246"><i class='bx bxl-linkedin' ></i></a>
                    <a href="https://www.linkedin.com/in/kaushal-gaur-76a192222"><i class='bx bxl-github' ></i></a>
                    <a href="https://www.linkedin.com/in/jai-kishan-sharma-2378b6230"><i class='bx bxl-whatsapp' ></i></a>
                </div>
                <h4><span style="color:red;" >To join us as an Agent </span> <a href="login2.jsp"> click here</a></h4>

            </div>
            <div class="home-img">
                <img src="images/one.png">
            </div>
        </section>
        
        <section class="why" id="why" style="display: inline-flex; padding: 0px;padding-left: 40px;padding-top: 40px;">
            <div class="right-one" style="width: 50%" >
                <img src="images/whyMed.jpg" alt="alt" style="width: 90%;height: 478.25px;border: 1px solid goldenrod;border-radius: 10px;" />
            </div>
            <div class="center" style="width: 50%">
                <h1 class="center" style="color: #7895cb;font-family: fantasy;">WHY MEDAide?</h1>
                 <h2 style="color: black;margin-top: 60px;">
                 "Introducing Medaide, your trusted companion for comprehensive medical services tailored to nuclear families. Experience convenient access to virtual consultations, expert healthcare advice, prescription management, and personalized care, all in one user-friendly platform. Stay healthy, effortlessly."
             </h2>
            </div>
           
        </section>


        <!-- sub services -->
        <section class="sub-service" id="service">
            <h5 style="color: #f75023;justify-content: center;text-align: center;">
                Services we provide:</h5>
            <div class="items">

                <!-- Modal -->
                <div class="modal fade" id="Companion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Companion</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">
                                    <img src="images/service1.png">
                                </div>
                                <h5>
                                    Our agent provides secure companion services, ensuring user safety on our website. We prioritize user well-being and provide support with compassion, trust, and confidentiality.
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#Companion">
                        <div class="sub-img">
                            <img src="images/service1.png">
                        </div>
                        <h3>Companion</h3>
                        <p>Our agent can help in household services, shoping partner, gardening, etc.</p>
                    </a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="medicineDelivery" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Medicine Delivery</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">  
                                    <img src="images/service2.png">
                                </div>
                                <h5>
                                    Safe and efficient medicine delivery service by our agents, ensuring user safety. Get your prescribed medications conveniently delivered to your doorstep
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#medicineDelivery">
                        <div class="sub-img">  
                            <img src="images/service2.png">
                        </div>
                        <h3>Medicine Delivery</h3>
                        <p>Our agent will bring medicine according to prescription.</p>
                    </a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="homeCare" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Home Care</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">  
                                    <img src="images/service3.png">
                                </div>
                                <h5>
                                    "Safe and reliable home care services provided by our agent, ensuring user safety and well-being."
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <a href="login1.jsp" data-bs-toggle="modal" data-bs-target="#homeCare">
                        <div class="sub-img">               
                            <img src="images/service3.png">               
                        </div>
                        <h3>Home Care</h3>
                        <p>Our medical agent will give treatment according to condition.</p>
                    </a>

                </div>
                <!-- Modal -->
                <div class="modal fade" id="urgentCare" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Urgent Care</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">  
                                    <img src="images/service4.png">
                                </div>
                                <h5>
                                    "Fast, safe, and convenient urgent care at your fingertips. Our website connects you with trusted healthcare professionals, ensuring prompt attention to your non-emergency medical needs, all from the comfort of your home."
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <a href="" data-bs-toggle="modal" data-bs-target="#urgentCare">
                        <div class="sub-img">
                            <img src="images/service4.png">
                        </div>
                        <h3>Urgent Care</h3>
                        <p>Our agent will give aid at your home</p>
                    </a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="TeleHealth" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Telehealth Services:</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">  
                                    <img src="images/service7.png">
                                </div>
                                <h5>
                                    Our website offers secure Telehealth services for families, ensuring user safety. Connect with healthcare providers remotely for medical consultations, diagnosis, prescriptions, and personalized care from the comfort of home.
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box">
                    <A href="" data-bs-toggle="modal" data-bs-target="#TeleHealth">
                        <div class="sub-img">
                            <img src="images/service7.png">
                        </div>
                        <h3>Telehealth Services:</h3>
                        <p>Our agent will provide virtual services.</p>
                    </a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="Travel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h5 class="modal-title text-center" id="exampleModalLabel">Urgent Care</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="sub-img1">  
                                    <img src="images/service6.png">
                                </div>
                                <h5>
                                    "Enjoy worry-free travel with our dedicated travel companions. We ensure your safety while providing personalized assistance and support throughout your journey."
                                </h5>
                                <br>
                                <h5>To avail this service</h5>
                            </div>
                            <div class="modal-footer">
                                <a href="login1.jsp" class="button-maker">Click here</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-box" >
                    <A href="" data-bs-toggle="modal" data-bs-target="#Travel">
                        <div class="sub-img">
                            <img src="images/service6.png">
                        </div>
                        <h3>Travel companion</h3>
                        <p>Our agent will drop you to your destination.</p>
                    </A>
                </div>

            </div>

            <!--our team-->
            <section class="team" id="team">
                <div class="center">
                    <h1>Our Team</h1>
                </div>

                <div class="team-content" >

                    <!-- Modal -->
                    <div class="modal fade" id="Kartik" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">

                                <div class="modal-body">
                                    <div class="sub-img1">  
                                        <img src="images/kartik.jpg">
                                    </div>
                                    <h3>
                                        Kartikey Sharma
                                    </h3>
                                    <br>
                                    <h5>KartikeySharma12@gmail.com</h5>
                                </div>
                                <div class="modal-footer">
                                    <a href="https://in.linkedin.com/in/kartik-sharma-842795182" class="button-maker">https://in.linkedin.com/in/kartik-sharma-842795182</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box" data-bs-toggle="modal" data-bs-target="#Kartik">

                        <img src="images/kartik.jpg">
                        <h3>Kartikey Sharma</h3>
                        <h5> JS / SQL</h5>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="Jaikishan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">

                                <div class="modal-body">
                                    <div class="sub-img1">  
                                        <img src="images/jk.jpg" style="height: 530px; width: auto;">
                                    </div>
                                    <h5>
                                        Jai Kishan Sharma
                                    </h5>
                                    <br>
                                    <h5>jaikishansharma2001@gmail.com</h5>
                                </div>
                                <div class="modal-footer">
                                    <a href="https://www.linkedin.com/in/jai-kishan-sharma-2378b6230" class="button-maker">https://www.linkedin.com/in/jai-kishan-sharma-2378b6230</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box" data-bs-toggle="modal" data-bs-target="#Jaikishan">
                        <img src="images/jk.jpg">
                        <h3>Jai kishan Sharma</h3>
                        <h5>Designer / HTML / CSS</h5>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="Mayank" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">

                                <div class="modal-body">
                                    <div class="sub-img1">  
                                        <img src="images/mayankSharma.jpg">
                                    </div>
                                    <h5>
                                        Mayank Sharma
                                    </h5>
                                    <br>
                                    <h5>Mayank36sharma00@gmail.com</h5>
                                </div>
                                <div class="modal-footer">
                                    <a href="https://www.linkedin.com/in/mayank-sharma-560598246" class="button-maker">https://www.linkedin.com/in/mayank-sharma-560598246</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box" data-bs-toggle="modal" data-bs-target="#Mayank">
                        <img src="images/mayankSharma.jpg">
                        <h3>Mayank Sharma</h3>
                        <h5>Database Operator</h5>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="jpmertiya" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">

                                <div class="modal-body">
                                    <div class="sub-img1">  
                                        <img src="images/jp2.jpg">
                                    </div>
                                    <h5>
                                        Jaspal Singh
                                    </h5>
                                    <br>
                                    <h5>jpmertiya57@gmail.com</h5>
                                </div>
                                <div class="modal-footer">
                                    <a href="https://www.linkedin.com/in/jaspal-singh-7298b8230" class="button-maker">https://www.linkedin.com/in/jaspal-singh-7298b8230</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box" data-bs-toggle="modal" data-bs-target="#jpmertiya">
                        <img src="images/jp2.jpg">
                        <h3>Jaspal Singh</h3>
                        <h5>Back end developer / Bootstrap</h5>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="kaushal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">

                                <div class="modal-body">
                                    <div class="sub-img1">  
                                        <img src="images/kaushalG.jpg">
                                    </div>
                                    <h5>
                                        Kaushal Gaur
                                    </h5>
                                    <br>
                                    <h5>Kaushalgr215@gmail.com</h5>
                                </div>
                                <div class="modal-footer">
                                    <a href="https://www.linkedin.com/in/kaushal-gaur-76a192222" class="button-maker">https://www.linkedin.com/in/kaushal-gaur-76a192222</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box" data-bs-toggle="modal" data-bs-target="#kaushal">
                        <img src="images/kaushalG.jpg">
                        <h3>Kaushal Gaur</h3>
                        <h5>Adviser / HTML / CSS</h5>
                    </div>
                </div>
            </section>

            <!--end of our team section-->

        </section>

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
    </body>
</html>
