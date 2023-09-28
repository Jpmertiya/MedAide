<%@page import="Entities.ServiceProvider"%>


<script src="js/resposive.js" type="text/javascript"></script>
<link href="nav_css.css" rel="stylesheet" type="text/css"/>
<header>
    <div class="logo" >
        <img src="images/logo1.png">

    </div>
    <div class="nav" style="display: inline-flex;">

        <ul  style="margin-right: 0%;padding-left: 10%;height: auto;width: 40%;justify-content: left">

            <li class="user" style="margin-right: 6%;margin-left: 10%;"><A href="#" data-bs-toggle="modal" data-bs-target="#profile-modal"><img src="profile_pic/<%= s.getProfile()%>"> </A> </li>
            <li style="font-size: 22px;text-transform: uppercase;margin-top: 0px;"> <%= s.getName()%> </li>
        </ul>

        <ul class="nav2">

            <li><a href="#home">Home</a></li>
            <li><a href="#service">Service</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="LogoutServlet" style="padding: 0px;">Log Out </a></li>

        </ul>
    </div>
</header>

<style>
    .user img{
        margin-bottom: -10%;
        border-radius: 50%;
        width: 50px;
        height: auto;
        margin-top: -14px;
        cursor: pointer;
    }
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: 'Jost', sans-serif;
        list-style: none;
        text-decoration: none;
        scroll-behavior: smooth;
        scrollbar-width: none;
    }
    :root{
        --bg-color: #ffffff;
        --text-color:#000;
        --second-color:#ao9dab;
        --main-color:#f75023;
        --big-font:5rem;
        --h2-font:2.3rem;
        --p-font:1rem;
    }
    header{
        position: fixed;
        width: 100%;
        top: 0;
        right: 0;
        z-index: 1000;
        display: flex;
        justify-content: space-between;
        background: #fff5f4;
        box-shadow: 0 5px 5px 0 #ffb74d;
        padding: 10px 2%;
        transition: .3s;
    }
    logo{
        width: 25%;
    }
    .logo img{
        margin-left: 5%;
        max-width: 100%;
        width: 100px;
        height: auto;
    }
    .nav{
        width: 75%;
    }
    .nav ul{
        justify-content: right;
        width: 60%;
        display: inline-flex;
    }
    .nav li{
        padding-top: 10px;
        position: relative;
    }
    .nav2 a{
        text-decoration: none;
        font-size: 1.5rem;
        color: var(--text-color);
        font-weight: 500;
        padding: 10px 16px;
        margin-bottom: -5%;
    }
    .nav2 a::after{
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        background: var(--main-color);
        bottom: -1px;
        left: 10px;
        transition: ease .40s;
    }
    .nav2 a:hover::after{
        width: 80%;
    }



    @media (max-width:920px){
        #menu-icon{
            display: block;
        }
        .home{
            min-height: 80vh;
        }
    }
</style>