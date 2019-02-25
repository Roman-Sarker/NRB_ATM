<%-- 
    Document   : ATM_Properties
    Created on : Jan 8, 2019, 10:23:47 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Details report</title>
        <link rel="stylesheet" href="../Theme_css/styles.css" type="text/css" />
        <link rel="stylesheet" href="../Common_Css/styles.css" />
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 90%;
                margin-top: 20px;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: center;
                padding: 2px;
                font-size: 13px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>

    </head>
    <body>
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

            <div id="body">

                <section id="content">
                    <!-- Report Table(Java) -->
                    <table>
                        <tr>
                            <th colspan="2" style="text-align:center; ">General Information</th>

                        </tr>
                        <tr>
                            <td>Id</td>
                            <td>BabsmeA40</td>
                        </tr>
                        <tr>
                            <td>Title</td>
                            <td>Bashabo SME ATM</td>
                        </tr>
                        <tr>
                            <td>Type</td>
                            <td>ATM DDC</td>
                        </tr>
                        <tr>
                            <td>Class</td>
                            <td>ATM</td>
                        </tr>
                        <tr>
                            <td>Currency</td>
                            <td>ATM DDC</td>
                        </tr>
                        <tr>
                            <td>Time offset</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>Owner</td>
                            <td>NRB</td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td>7777</td>
                        </tr>
                    </table>

                    <!-- 2nd table start -->
                    </br>
                    <table style="text-align:center; ">
                        <tr>
                            <th colspan="2" style="text-align:center; ">Location</th>

                        </tr>
                        <tr>
                            <td>Country</td>
                            <td>Bangladesh</td>
                        </tr>
                        <tr>
                            <td>Region</td>
                            <td>Dhaka</td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td>Palton</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>NRB Palton SME</td>
                        </tr>
                        <tr>
                            <td>Comments</td>
                            <td>ATM DDC</td>
                        </tr>

                    </table>
                    <!--3rd table-->
                    </br>
                    <table style="text-align: center; ">
                        <tr>
                            <th colspan="2" style="text-align:center; ">Risk Control</th>

                        </tr>
                        <tr>
                            <td>Risk Level</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Risk and cumulative limits control</td>
                            <td>No</td>
                        </tr>
                        <tr>
                            <td>Disable acquiring control for single transection</td>
                            <td>No</td>
                        </tr>

                    </table>
                    <!-- Report Table(Java)end -->
                </section>

                <aside class="sidebar">

                    <ul>
                        <li>
                            <h4>Search</h4>
                            <ul>
                                <select style="width: 128px; text-align: center; color: grey; margin: 5px 70px 0px;">
                                    <option value="volvo">atm_Id_1</option>
                                    <option value="saab">atm_Id_2</option>
                                    <option value="mercedes">atm_Id_3</option>
                                    <option value="audi">atm_Id_4</option>
                                </select> 
                            </ul>
                        </li>
                        <li>
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="#">List of ATMs</a></li>
                                <li><a href="#">Status</a></li>
                                <li><a href="#">Hoppers</a></li>
                                <li><a href="#">E-journal</a></li>
                                <li><a href="#">Events</a></li>
                            </ul>
                        </li>
                        
                    </ul>

                </aside>
                <div class="clear"></div>
            </div>
            <footer>
                <div class="footer-content">
                    <ul>
                        <li><h4>Proin accumsan</h4></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Blandit elementum</a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Curabitur sit amet tellus</a></li>
                    </ul>

                    <ul>
                        <li><h4>Condimentum</h4></li>
                        <li><a href="#">Curabitur sit amet tellus</a></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Cras dictum</a></li>
                    </ul>

                    <ul class="endfooter">
                        <li><h4>Suspendisse</h4></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Curabitur sit amet tellus</a></li>
                        <li><a href="#">Donec in ligula nisl.</a></li>
                    </ul>

                    <div class="clear"></div>
                </div>
                <div class="footer-bottom">
                    <p>&copy; YourSite 2010. <a href="http://zypopwebtemplates.com/">Free CSS Web Templates</a> by ZyPOP</p>
                </div>
            </footer>
        </div>
    </body>
</html>

