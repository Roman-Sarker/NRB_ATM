<%-- 
    Document   : ATM_Properties
    Created on : Jan 8, 2019, 10:23:47 AM
    Author     : root
--%>

<%@page import="report.details.BeanClass"%>
<%@page import="report.details.Bean"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Details Report</title>
        <link rel="stylesheet" href="../Theme_css/styles.css" type="text/css" />
        <link rel="stylesheet" href="../Common_Css/styles.css" />
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 98%;
                margin-top: 10px;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: center;
                padding: 2px;
                font-size: 11px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            
                
            
        </style>

    </head>
    <body>
        
        <c:out value="${message }"></c:out>
        
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
                <form action="sampleServlet"></form>
                <section id="content">
                    <!-- Report Table(Java) -->
                    <%
                        BeanClass bean = new BeanClass();
                        
                        
                    %>
                    <table>
                        <%
                            for(int i=0; i<bean.getbReq_type_id().size(); i++)
                            {
                                %>
                            <tr>
                                <td><%= bean.getbReq_type_id().get(i).toString()%></td>
                                <td><%= bean.getbReq_log_id().get(i).toString()%></td>
                                <td><%= bean.getbCard_no().get(i).toString()%></td>
                            </tr>
                                <%
                            }
                        %>
                        
                    </table>
                    <table>
                        <tr>
                            <td colspan="15" style="text-align:center; "><h3>Request Log</h3></td>

                        </tr>
                        <tr>
                            <th>Req Type Id</th>
                            <th>Req Log Id</th>
                            <th>Timestamp</th>
                            <th>Status</th>
                            <th>Card No</th>
                            <th>Location</th>
                            <th>Decline reason</th>
                            <th>Amount</th>
                            <th>Insert Date</th>
                            <th>Merchant Cat Code</th>
                            <th>Aquirer Fee</th>
                            <th>Acq Ins Code</th>
                            <th>Frd Ins Code</th>
                            <th>Terminal Id</th>
                            <th>Terminal Loc</th>
                        </tr>
                        
                        <%
                            for(int i=0; i<40; i++)
                            {
                        %>
                        <tr>
                            <td><p style="line-height: 1.5em; margin-bottom: 0px;"><%= i+1%></p></td>
                            <td style="font-weight: bold; ">E/L</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>1 107 505</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
                            <td>NRBfrdA40</td>
                            <td>NRB Branch ATM</td>
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
                    
                </div>
                <div class="footer-bottom">
                    <p>&copy; YourSite 2010. <a href="http://zypopwebtemplates.com/">Free CSS Web Templates</a> by ZyPOP</p>
                </div>
            </footer>
        </div>
    </body>
</html>

