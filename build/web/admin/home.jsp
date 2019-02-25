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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Details report</title>
        <link rel="stylesheet" href="../Theme_css/styles.css" type="text/css" />

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

                    <article>


                        <h2>Introduction to spigot</h2>
                        <div class="article-info">Posted on <time datetime="2013-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></div>

                        <p>Welcome to spigot, a free premium valid CSS3 &amp; HTML5 web template from <a href="http://zypopwebtemplates.com/" title="ZyPOP">ZyPOP</a>. This template is completely <strong>free</strong> to use permitting a link remains back to  <a href="http://zypopwebtemplates.com/" title="ZyPOP">http://zypopwebtemplates.com/</a>. Should you wish to use this template unbranded you can buy a template license from our website for 8.00 GBP, this will allow you remove all branding related to our site, for more information about this see below.</p>	

                        <p>This template has been tested in:</p>


                        <ul class="styledlist">
                            <li>Firefox</li>
                            <li>Opera</li>
                            <li>IE</li>
                            <li>Safari</li>
                            <li>Chrome</li>
                        </ul>

                        <a href="#" class="button">Read more</a>
                        <a href="#" class="button">Comments</a>



                    </article>

                    <article class="expanded">

                        <h2>Buy unbranded</h2>
                        <div class="article-info">Posted on <time datetime="2013-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></div>
                        <p>Purchasing a template license for 8.00 GBP (at time of writing around 12 USD) gives you the right to remove any branding including links, logos and source tags relating to ZyPOP. As well as waiving the attribution requirement, your payment will also help us provide continued support for users as well as creating new web templates. Find out more about how to buy at the licensing page on our website which can be accessed at <a href="http://zypopwebtemplates.com/licensing" title="template license">http://zypopwebtemplates.com/licensing</a></p>

                        <h3>Lorem lipsum</h3>

                        <p>Morbi fermentum condimentum felis, commodo vestibulum sem mattis sed. Aliquam magna ante, mollis vitae tincidunt in, malesuada vitae turpis. Sed aliquam libero ut velit bibendum consectetur. Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>


                        <a href="#" class="button">Read more</a>
                        <a href="#" class="button">Comments</a>
                        
                        
                    </article>
                </section>

                <aside class="sidebar">

                    <ul>

                        <li>
                            <h4>Search site</h4>
                            <ul>
                                <li class="text">
                                    <form method="get" class="searchform" action="#" >

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
