<%-- 
    Document   : log
    Created on : Feb 5, 2019, 12:52:22 PM
    Author     : roman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>Sliding Form</title>
        <link rel="stylesheet" href="../Login_Temp/css/style.css">


    </head>

    <body>

        <script  src="https://code.jquery.com/jquery-3.1.1.min.js"  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="  crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" ></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <%
            String contextPath = request.getContextPath();
            String loginFlag = (String) session.getAttribute("LOGIN");
            if (loginFlag != null) {
                String redirectURL = "home.jsp";
                response.sendRedirect(redirectURL);
            }
        %>

        <div class="body">
            <div class="veen">
                <div class="login-btn splits">
                    <p>Already an user?</p>
                    <button class="active">Login</button>
                </div>
                <div class="rgstr-btn splits">
                    <img src="../Login_Temp/img/nrb-bank.jpg" alt="NRB-Bank Logo" width="300px" height="100px">
                    <p></p>
                    <button>Register</button>
                </div>
                <div class="wrapper">
                    <!--<form role="form" action="<%=contextPath%>/admin/all_atm.jsp" method="post" id="login" tabindex="500">-->
                    <form role="form" action="<%=contextPath%>/LoginServlet" method="post" id="login" tabindex="500">

                        <h3>Login</h3>
                        <div class="mail">
                            <input type="mail" name="mail" id="mail" required>
                            <label>Mail or Username</label>
                        </div>
                        <div class="passwd">
                            <input type="password" name="pass" id="pass" required>
                            <label>Password</label>
                        </div>
                        <div class="submit">
                            <button class="dark">Login</button>
                        </div>
                    </form>
                    <form id="register" tabindex="502">
                        <h3>Register</h3>
                        <div class="name">
                            <input type="text" name="fname" id="fname">
                            <label>Full Name</label>
                        </div>
                        <div class="mail">
                            <input type="mail" name="mail" id="mail">
                            <label>Mail</label>
                        </div>
                        <div class="uid">
                            <input type="text" name="uname" id="uname" required>
                            <label>User Name</label>
                        </div>
                        <div ><!--class="passwd"-->
                            <!--<input type="password" name="pass" id="pass">-->
                            <input type="password" name="password" placeholder="Password" required>
                            <label>Password</label>
                        </div>
                        <div class="submit">
                            <button class="dark">Register</button>
                        </div>
                        <h1>Password matching status.</h1>
                    </form>

                </div>
            </div>	
        </div>

        <div class="site-link">
            <a href="https://www.erainfotechbd.com/" target="_blank">
                Creator <img src="../Login_Temp/img/era_logo.png"> 

                Era-InfoTech</a>
        </div>
        <style type="text/css">
            .site-link{
                padding: 5px 15px;
                position: fixed;
                z-index: 99999;
                background: #fff;
                box-shadow: 0 0 4px rgba(0,0,0,.14), 0 4px 8px rgba(0,0,0,.28);
                right: 30px;
                bottom: 30px;
                border-radius: 10px;
            }
            .site-link img{
                width: 30px;
                height: 30px;
            }
        </style>



        <script  src="../Login_Temp/js/index.js"></script>
        <link rel="stylesheet" type="text/css" href="../Login_Template/vendor/animsition/css/animsition.min.css">
    </body>

</html>
