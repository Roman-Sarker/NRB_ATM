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
        <title>spigot - Free CSS Template by ZyPOP</title>
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
                    <a href="index.jsp">Home</a>
                    <a href="tlg.jsp">TLG</a>
                    <div class="dropdown">
                        <button class="dropbtn">ATM 
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="all_atm.jsp">List of ATM</a>
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
                            <a href="atm_properties.jsp">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>

            <div id="body">

                <section id="content">
                    <!-- Report Table(Java) -->
                    <table>
                        <tr>
                            <th colspan="7" style="text-align:center; ">List of ATMs</th>

                        </tr>
                        <tr>
                            <td>#</td>
                            <td>D/M</td>
                            <td>Name</td>
                            <td>Title</td>
                            <td>State</td>
                            <td>ATM Activity</td>
                            <td>ATM Remains(20)</td>
                        </tr>
                        
                        <%
                            for(int i=0; i<20; i++)
                            {
                        %>
                        <tr>
                            <td><p style="line-height: 1.5em; margin-bottom: 0px;"><%= i+1%></p></td>
                            <td style="font-weight: bold; ">E/L</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>
                                <div>
                                    <span style="height: 10px; width: 10px; background-color: green; border-radius: 50%; display: inline-block;"></span> /
                                    <span style="height: 10px; width: 10px; background-color: blue; border-radius: 50%; display: inline-block;"></span>
                                </div>
                            </td>
                            <td><a href="">Withdrawal </a>(09/01/19 10:30:54)</td>
                            <td>1 107 505</td>
                        </tr>
                        <%
                            }
                        %>
                        
                    </table>


                    <!-- Report Table(Java)end -->
                </section>

                <aside class="sidebar">

                    <ul>
                        <li>
                            <h4>Search</h4>
                            <ul>
                                
                                <li>
                                    <label>&nbsp; Select ATM >> &nbsp; </label>
                                    <select style="width: 128px; text-align: center; color: grey; ">
                                        <option value="volvo">All</option>
                                        <option value="saab">atm_Id_1</option>
                                        <option value="mercedes">atm_Id_2/option>
                                        <option value="audi">atm_Id_3</option>
                                    </select> 
                                </li>
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

