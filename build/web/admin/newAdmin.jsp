<%-- 
    Document   : index.jsp
    Created on : Jan 6, 2019, 1:41:31 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Details report</title>
        <link rel="stylesheet" href="../Theme_css/styles.css" type="text/css" />
        <link rel="stylesheet" href="../Common_Css/newAdminCSS/style.css">
        <link rel="stylesheet" href="../Common_Css/bootstrap/bootstrap.min.css">

    </head>
    <body>
        <%/*
            if (session.getAttribute("LOGIN") == null) {
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            }*/
            String contextPath = request.getContextPath();
        %>
        <div id="container">
            <header>
                <h1><a href="/">NRB<span>Bank</span></a></h1>
                <h2 style="color: #999999; ">ATM Web Report</h2>
            </header>
            <nav>
                <div class="navbar">
                    <a href="home.jsp">Home</a>
                    <a href="tlg.jsp">TLG</a>
                    <div class="dropdown">
                        <button class="dropbtn">ATM 
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="all_atm.jsp">Middleware Request Log</a>
                            <a href="atm_properties.jsp">ATM Properties</a>
                            <a href="#">ATM Transection</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn">ADMIN 
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="newAdmin.jsp">New Admin</a>
                            <a href="log.jsp">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>

            <!--<img class="header-image" src="images/image.jpg" alt="Buildings" />-->

            <div id="body">
                <section id="content">
                    <!--Error or Success message-->
                    <div class="col-sm-6 col-sm-offset-3 l-form-9-left section-description wow fadeIn">
                        <%  String error_msg = (String) request.getParameter("eMessage");
                            String sucess_msg = (String) request.getParameter("sMessage");

                            if (error_msg != null) {%>
                        <div class="alert alert-danger">
                            <%=error_msg%> 
                        </div>
                        <%
                            } else if (sucess_msg != null) {%>
                            <div class="alert alert-success" >
                            <%=sucess_msg%> 
                        </div>
                        <% }
                        %>

                    </div>
                    <!--Form content-->
                    <form action="<%=contextPath%>/newAdmin" role="form" method="post" style="border: 30px solid rgb(204, 204, 204); width: 70%; align-content: center; margin: 11px auto 0px;">
                        <div class="container">
                            <h1>Sign Up</h1>
                            <hr>
                            <div style="width: 45%; float: left;">
                                <label for="fName"><b>First Name</b></label>
                                <input type="text" placeholder="Enter First Name" name="fname" required><br/>

                                <label for="lName"><b>Last Name</b></label>
                                <input type="text" placeholder="Enter Last Name" name="lname" required><br/>

                                <label for="email"><b>Email/User Name</b></label>
                                <input type="text" placeholder="Enter Email or User Name" name="email" required>
                            </div>
                            <div style="width: 45%; margin-left: 41px; float: left;">
                                <label for="psw"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="pass" required>

                                <label for="psw-repeat"><b>Repeat Password</b></label>
                                <input type="password" placeholder="Repeat Password" name="passR" required>

                                <label>
                                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me<br/>
                                </label>

                                <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                            </div>
                            <div class="clearfix">
                                <button type="button" class="cancelbtn">Cancel</button>
                                <button type="submit" class="signupbtn">Sign Up</button>
                            </div>
                        </div>
                    </form> 

                </section>

                <aside class="sidebar">

                    <ul>	
                        <li>
                            <h4>Search By</h4>
                            <ul>
                                <li class="text">
                                    <form method="get" class="searchform" action="#" >
                                        <label>Id:</label>
                                        <input type="text" id="id" name="id">
                                        <input type="submit" value="Find">
                                    </form>	
                                </li>
                            </ul>
                        </li>
                        <li>
                            <h4>Select Transection</h4>
                            <ul>
                                <li class="text">
                                    <form method="get" class="searchform" action="#" >
                                        <button type="button" style="width: 135px;">Print</button>
                                        <button type="button" style="width: 135px;">Setup</button>
                                    </form>	
                                </li>
                            </ul>
                        </li>

                    </ul>

                </aside>
                <div class="clear"></div>
            </div>
            <footer>
                <div class="footer-content">
                    <ul>

                    </ul>

                    <ul>

                    </ul>

                    <ul class="endfooter">

                    </ul>

                    <div class="clear"></div>
                </div>
                <div class="footer-bottom">
                    <p>&copy; YourSite 2013. <a href="http://zypopwebtemplates.com/">Free CSS Website Templates</a> by ZyPOP</p>
                </div>
            </footer>
        </div>
    </body>
</html>
