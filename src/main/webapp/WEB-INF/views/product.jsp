<%-- 
    Document   : product
    Created on : Mar 21, 2009, 8:32:20 PM
    Author     : jared
--%>

<%@page contentType="text/html" pageEncoding="MacRoman"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Tools Shop</title>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/stylesheets/style.css" />
        <!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="stylesheets/iecss.css" />
        <![endif]-->
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/javascripts/boxOver.js"></script>
<script>
PositionX = 100;
PositionY = 100;


defaultWidth  = 500;
defaultHeight = 500;
var AutoClose = true;

if (parseInt(navigator.appVersion.charAt(0))>=4){
var isNN=(navigator.appName=="Netscape")?1:0;
var isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;}
var optNN='scrollbars=no,width='+defaultWidth+',height='+defaultHeight+',left='+PositionX+',top='+PositionY;
var optIE='scrollbars=no,width=150,height=100,left='+PositionX+',top='+PositionY;
function popImage(imageURL,imageTitle){
if (isNN){imgWin=window.open('about:blank','',optNN);}
if (isIE){imgWin=window.open('about:blank','',optIE);}
with (imgWin.document){
writeln('<html><head><title>Loading...</title><style>body{margin:0px;}</style>');writeln('<sc'+'ript>');
writeln('var isNN,isIE;');writeln('if (parseInt(navigator.appVersion.charAt(0))>=4){');
writeln('isNN=(navigator.appName=="Netscape")?1:0;');writeln('isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;}');
writeln('function reSizeToImage(){');writeln('if (isIE){');writeln('window.resizeTo(300,300);');
writeln('width=300-(document.body.clientWidth-document.images[0].width);');
writeln('height=300-(document.body.clientHeight-document.images[0].height);');
writeln('window.resizeTo(width,height);}');writeln('if (isNN){');
writeln('window.innerWidth=document.images["George"].width;');writeln('window.innerHeight=document.images["George"].height;}}');
writeln('function doTitle(){document.title="'+imageTitle+'";}');writeln('</sc'+'ript>');
if (!AutoClose) writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()">')
else writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()" onblur="self.close()">');
writeln('<img name="George" src='+imageURL+' style="display:block"></body></html>');
close();
}}

</script>
</head>
<body>

<div id="main_container">

	<div id="header">

       <div class="top_right">

            <div class="languages">
                <div class="lang_text">Languages:</div>
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
                         <li><a href="index.html" class="nav">  Home </a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav">Products</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav">Specials</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav">My account</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav">Sign Up</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav">Shipping </a></li>
                         <li class="divider"></li>
                         <li><a href="contact.html" class="nav">Contact Us</a></li>

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




   	<div class="center_title_bar"><c:out value="${product.title}" /></div>

    	<div class="prod_box_big">

            <div class="center_prod_box_big">

                 <div class="product_img_big">
                 <a href="javascript:popImage('images/big_pic.jpg','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/p3.jpg" alt="" title="" border="0" /></a>
                 <div class="thumbs">
                 <a href="#" title="header=[Thumb1] body=[&nbsp;] fade=[on]"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/thumb1.jpg" alt="" title="" border="0" /></a>
                 <a href="#" title="header=[Thumb2] body=[&nbsp;] fade=[on]"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/thumb2.jpg" alt="" title="" border="0" /></a>
                 <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="<c:out value="${pageContext.request.contextPath}"/>/images/thumb1.jpg" alt="" title="" border="0" /></a>
                 </div>
                 </div>
                     <div class="details_big_box">
                         <div class="product_title_big">Makita 156 MX-VL</div>
                         <div class="specifications">
                            Available: <span class="blue">In stock</span><br />

                            Warranties: <span class="blue">24 months</span><br />

                            Transport: <span class="blue">
                            delivery services company</span><br />

                            Include :<span class="blue"> TVA</span><br />
                            Description :<span class="blue"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br />
                         </div>
                         <div class="prod_price_big"><span class="reduce">350$</span> <span class="price">270$</span></div>


                         <a href="details.html" class="prod_buy">add to cart</a>
                         <a href="#" class="prod_compare">compare</a>
                     </div>
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