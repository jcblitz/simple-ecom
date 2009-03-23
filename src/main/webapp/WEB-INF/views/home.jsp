<%-- 
    Document   : home
    Created on : Mar 20, 2009, 11:31:03 PM
    Author     : jared
--%>

<%@page contentType="text/html" pageEncoding="MacRoman"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title><spring:message code="page.home.title" /></title>
        <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/stylesheets/style.css" />
        <!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/stylesheets/iecss.css" />
        <![endif]-->
        <script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/javascripts/boxOver.js"></script>
    </head>
    <body>

        <div id="main_container">

            <div id="header">

                <div class="top_right">

                    <div class="languages">
                        <div class="lang_text">
                            <spring:message code="global.label.languages" />
                        </div>
                        <a href="#" class="lang"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/en.gif" alt="" title="" border="0" /></a>
                        <a href="#" class="lang"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/de.gif" alt="" title="" border="0" /></a>
                    </div>

                    <div class="big_banner">
                        <a href="#"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/banner728.jpg" alt="" title="" border="0" /></a>
                    </div>

                </div>


                <div id="logo">
                    <a href="index.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/logo.png" alt="" title="" border="0" width="182" height="85" /></a>
                </div>




            </div>

            <div id="main_content">

                <div id="menu_tab">
                    <ul class="menu">
                        <li><a href="index.html" class="nav"><spring:message code="main.navigation.label.home" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav"><spring:message code="main.navigation.label.products" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav"><spring:message code="main.navigation.label.specials" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav"><spring:message code="main.navigation.label.myaccount" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav"><spring:message code="main.navigation.label.signup" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav"><spring:message code="main.navigation.label.shipping" /> </a></li>
                        <li class="divider"></li>
                        <li><a href="contact.html" class="nav"><spring:message code="main.navigation.label.contactus" /></a></li>

                    </ul>

                </div><!-- end of menu tab -->

                <div class="crumb_navigation">
                    Navigation: <span class="current">Home</span>

                </div>

                <div class="left_content">
                    <div class="title_box">Categories</div>

                    <ul class="left_menu">
                        <li class="odd"><a href="details.html">Power Tools</a></li>
                        <li class="even"><a href="details.html">Air Tools</a></li>
                        <li class="odd"><a href="details.html">Hand Tools</a></li>
                        <li class="even"><a href="details.html">Accessories</a></li>
                        <li class="odd"><a href="details.html">Workwear</a></li>
                        <li class="even"><a href="details.html">Spare Parts</a></li>
                        <li class="odd"><a href="details.html">Power Tools</a></li>
                        <li class="even"><a href="details.html">Air Tools</a></li>
                        <li class="odd"><a href="details.html">Hand Tools</a></li>
                        <li class="even"><a href="details.html">Accessories</a></li>
                        <li class="odd"><a href="details.html">Workwear</a></li>
                        <li class="even"><a href="details.html">Spare Parts</a></li>
                    </ul>


                    <div class="title_box">Special Products</div>
                    <div class="border_box">
                        <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
                        <div class="product_img"><a href="details.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p1.jpg" alt="" title="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>


                    <div class="title_box">Newsletter</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                        <a href="#" class="join">subscribe</a>
                    </div>

                    <div class="banner_adds">

                        <a href="#"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/bann2.jpg" alt="" title="" border="0" /></a>
                    </div>


                </div><!-- end of left content -->



                <div class="center_content">

                    <div class="oferta">
                        <img src="<c:out value="${pageContext.request.contextPath}"/>/images/p1.png" width="165" height="113" border="0" class="oferta_img" alt="" title="" />

                        <div class="oferta_details">
                            <div class="oferta_title">Power Tools BST18XN Cordless</div>
                            <div class="oferta_text">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            </div>
                            <a href="details.html" class="prod_buy">details</a>
                        </div>
                    </div>


                    <div class="center_title_bar">Latest Products</div>

                    <div id="main_products">
                    <c:forEach var="product" items="${productDisplayModule}">
                        <c:set var="product" value="${product}" scope="request"/>
                        <c:import url="product-display.jspf" />
                    </c:forEach>
                    </div>
                    

                    <div class="center_title_bar">Recomended Products</div>

                    <div class="prod_box">

                        <div class="center_prod_box">
                            <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
                            <div class="product_img"><a href="details.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p7.jpg" alt="" title="" border="0" /></a></div>
                            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        </div>

                        <div class="prod_details_tab">
                            <a href="buy.html" class="prod_buy">Add to Cart</a>
                            <a href="details.html" class="prod_details">Details</a>
                        </div>
                    </div>

                    <div class="prod_box">

                        <div class="center_prod_box">
                            <div class="product_title"><a href="details.html">Bosch XC</a></div>
                            <div class="product_img"><a href="details.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p1.jpg" alt="" title="" border="0" /></a></div>
                            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        </div>

                        <div class="prod_details_tab">
                            <a href="buy.html" class="prod_buy">Add to Cart</a>
                            <a href="details.html" class="prod_details">Details</a>
                        </div>
                    </div>


                    <div class="prod_box">

                        <div class="center_prod_box">
                            <div class="product_title"><a href="details.html">Lotus PP4</a></div>
                            <div class="product_img"><a href="details.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p3.jpg" alt="" title="" border="0" /></a></div>
                            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        </div>

                        <div class="prod_details_tab">
                            <a href="buy.html" class="prod_buy">Add to Cart</a>
                            <a href="details.html" class="prod_details">Details</a>
                        </div>
                    </div>


                </div><!-- end of center content -->



                <div class="right_content">

                    <div class="title_box">Search</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="keyword"/>
                        <a href="#" class="join">search</a>
                    </div>




                    <div class="shopping_cart">
                        <div class="title_box">Shopping cart</div>

                        <div class="cart_details">
                            3 items <br />
                            <span class="border_cart"></span>
                            Total: <span class="price">350$</span>
                        </div>

                        <div class="cart_icon"><a href="#" title=""><img src="<c:out value="${pageContext.request.contextPath}"/>/images/shoppingcart.png" alt="" title="" width="35" height="35" border="0" /></a></div>

                    </div>


                    <div class="title_box">What�s new</div>
                    <div class="border_box">
                        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
                        <div class="product_img"><a href="details.html"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p2.jpg" alt="" title="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>



                    <div class="title_box">Manufacturers</div>

                    <ul class="left_menu">
                        <li class="odd"><a href="services.html">Bosch</a></li>
                        <li class="even"><a href="services.html">Samsung</a></li>
                        <li class="odd"><a href="services.html">Makita</a></li>
                        <li class="even"><a href="services.html">LG</a></li>
                        <li class="odd"><a href="services.html">Fujitsu Siemens</a></li>
                        <li class="even"><a href="services.html">Motorola</a></li>
                        <li class="odd"><a href="services.html">Phillips</a></li>
                        <li class="even"><a href="services.html">Beko</a></li>
                    </ul>

                    <div class="banner_adds">

                        <a href="#"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/bann1.jpg" alt="" title="" border="0" /></a>
                    </div>

                </div><!-- end of right content -->



            </div><!-- end of main content -->



            <div class="footer">


                <div class="left_footer">
                    <img src="<c:out value="${pageContext.request.contextPath}"/>/images/footer_logo.png" alt="" title="" width="89" height="42"/>
                </div>

                <div class="center_footer">
                    Template name. All Rights Reserved 2008<br />
                    <a href="http://csscreme.com/freecsstemplates/" title="free css templates"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/csscreme.jpg" alt="free css templates" border="0" /></a><br />
                    <img src="<c:out value="${pageContext.request.contextPath}"/>/images/payment.gif" alt="" title="" />
                </div>

                <div class="right_footer">
                    <a href="index.html">home</a>
                    <a href="details.html">about</a>
                    <a href="details.html">sitemap</a>
                    <a href="details.html">rss</a>
                    <a href="contact.html">contact us</a>
                </div>

            </div>


        </div>
        <!-- end of main_container -->
    </body>
</html>