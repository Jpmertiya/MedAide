<script src="js/resposive.js" type="text/javascript"></script>
<link href="nav_css.css" rel="stylesheet" type="text/css"/>
<header>
    <div class="logo">
        <img src="images/logo1.png">
    </div>
    <div id="menu-icon" class="bx bx-menu"></div>
    <div class="nav">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="index.jsp">Service</a></li>
            <li><a href="index.jsp">Team</a></li>
            <li><a href="index.jsp">Contact</a></li>
        </ul>
    </div>
</header>

<style>
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
        align-items: center;
        justify-content: space-between;
        background: #fff5f4;
        box-shadow: 0 5px 5px 0 #ffb74d;
        padding: 10px 2%;
        transition: .3s;
    }
    .logo img{
        margin-left: 5%;
        max-width: 100%;
        width: 100px;
        height: auto;
    }
    .nav ul{
        display: inline-flex;
    }
    .nav li{
        position: relative;
        height: 22px;
    }
    .nav a{
        text-decoration: none;
        font-size: 1.5rem;
        color: var(--text-color);
        font-weight: 500;
        padding: 10px 16px;
    }
    .nav a::after{
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        background: var(--main-color);
        bottom: -10px;
        left: 10px;
        transition: ease .40s;
    }
    .nav a:hover::after{
        width: 80%;
    }
    #menu-icon{
        font-size: 35px;
        color: var(--text-color);
        z-index: 10001;
        cursor: pointer;
        display: none;
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