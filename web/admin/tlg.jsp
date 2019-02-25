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
        <link rel="stylesheet" href="../Tab_css/css/style.css">
        
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

            <!--<img class="header-image" src="images/image.jpg" alt="Buildings" />-->

            <div id="body">
                <section id="content">

                    <div class="tabbed">
                        <input type="radio" name="tabs" id="tab-nav-1" checked>
                        <label for="tab-nav-1">List of Requested Transection</label>
                        <input type="radio" name="tabs" id="tab-nav-2">
                        <label for="tab-nav-2">Request by Card</label>
                        <input type="radio" name="tabs" id="tab-nav-3">
                        <label for="tab-nav-3">Request by Terminal</label>
                        
                        <div class="tabs">
                            <div>
                                <!--<h2>HTML</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla tortor, a posuere urna. Praesent urna quam, semper ut ultricies et, mollis ac elit. Suspendisse tempor, lacus id consectetur sagittis, lorem odio dignissim nulla, a condimentum sem neque sed ligula. Maecenas id risus eros, eget porttitor metus. Quisque pellentesque neque dignissim nisl pellentesque vitae tempus urna eleifend. Nullam egestas, neque id placerat luctus, nibh velit pharetra nulla, vel pretium justo massa ut elit. Vivamus nec auctor nunc.</p>-->
                                <table>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                     <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <div><h2>CSS</h2><p>Maecenas dictum, urna ut consequat condimentum, est dui commodo diam, ac pretium dui ante eu quam. Curabitur posuere metus nec tellus venenatis placerat. Ut egestas neque in odio vulputate gravida. In at justo ac est laoreet eleifend vel quis arcu. Aliquam erat volutpat. Proin vitae vehicula neque. Nam tempus erat ac ante tincidunt tincidunt. Pellentesque eu nibh sapien. Nunc augue magna, lacinia eget congue eget, mattis id tortor. Fusce id vestibulum neque. Proin tincidunt tellus ut risus lobortis cursus. Duis sit amet urna vel sapien ullamcorper varius.</p></div>
                            <div><h2>Javascript</h2><p>Duis luctus dolor ac erat luctus hendrerit. Aenean id congue magna. Proin sit amet elit vel lacus ornare dignissim imperdiet nec odio. Maecenas condimentum egestas lorem et laoreet. Donec ut leo non purus rutrum euismod vel faucibus nunc. Curabitur vel mauris nisi, vitae laoreet erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas ipsum odio, iaculis id vulputate vitae, vestibulum at nunc. Integer non nisl lorem. Quisque lobortis congue semper. Nunc neque nisi, consequat id egestas vitae, porta vel sem.</p></div>
                            
                        </div>
                    </div>
                    
                </section>

                <aside class="sidebar">

                    <ul>	
                        <li>
                            <h4>Search By</h4>
                            <ul>
                                <li class="text">
                                    <form method="get" class="searchform" action="#" >
                                        <label>Id:</label>
                                        <input type="text" id="id" name="id" style="width: 185px;">
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
