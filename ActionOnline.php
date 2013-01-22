<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<link rel="apple-touch-icon" href="image/Surprising-St_icon.png" />

<style type="text/css">
body .ui-li .ui-li-desc {
 white-space: normal;
 }
 body .ui-footer .ui-title {
 white-space: normal;
 }
</style>
<script>
 $(document).ready(function() {
  // disable ajax nav
  $.mobile.ajaxLinksEnabled = false;
 });
</script>
<title>Mobile St Pete</title>
</head>

<body>
<div id="header" data-role="header" data-theme="b">
    <table id="banner">
        <tr>
            <td id="logo"><a href="http://www.stpete.org/mobile/"><img src="http://www.stpete.org/images/logo.png" alt="pelican" /></a></td>
            <td id="palm"><img class="palm" src="http://www.stpete.org/images/palm.png" alt="palmtree" /></td>
        </tr>
    </table>                                                   

<div id="crumbs"><a href="http://www.stpete.org/mobile/" data-ajax="false" data-role="button" data-icon="home" data-theme="d">Home</a><!--&nbsp;&#124;&nbsp;The Vinoy Park Hotel--></div>
    <div data-role="navbar">
        <ul>
            <li><a href="index.asp" class="ui-btn-active">Home</a></li>
            <li><a href="events.php">Events</a></li>
            <li><a href="news.php">News</a></li>
            <li><a href="contact.html" data-prefetch>Contact</a></li>
        </ul>
    </div><!-- /navbar -->
</div><!--/header-->

<div data-role="content" >
<h2>&nbsp;</h2>
<div class="content-primary">
		<ul data-role="listview" data-theme="c" data-inset="true">
                <li><a href="scanstpete.htm" data-ajax="false"><img class="newsimage" src="images/scanstpete_brochure.png"><h1>Scan St. Pete</h1><p>Explore your cities historic, cultural and parks through our QR codes around the city.</p><br></a></li>
                <li><a href="50things.html" data-ajax="false"><img class="newsimage" src="images/Downtown_fireworks.jpg">
                  <h1>50 Fascinating Things</h1>
                  <p>A lineup of fascinating things to see and do in St. Pete.</p><br></a></li>
                <li><a href="parking.php" data-ajax="false"><img class="newsimage" src="images/parking_symbol.png">
                  <h1>Parking</h1>
                  <p>Parking options within St. Pete.</p><br></a></li>
    </ul>
        </div><!-- /content-primary-->



    <br />
</div><!-- /data role content -->

<!--footer-->
<div id="footer" data-role="footer" data-theme="d">
    <div data-role="navbar">
        <ul>
            <li><a href="index.asp" data-prefetch>Home</a></li>
            <li><a href="events.php">Events</a></li>
            <li><a href="news.php">News</a></li>
            <li><a href="contact.html" data-prefetch>Contact</a></li>
            <li><a href="#" data-ajax="false" onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/index.asp?LeftMobileSite';">Full Site</a></li>
        </ul>
        <p id="copyright">Copyright 2012, All Rights Reserved</p>
    
    </div><!-- /navbar -->
</div><!--/footer-->
<script type="text/javascript">$('[data-role=page]').live('pageshow',function(event,ui){try{_gaq.push(['_setAccount','UA-8738346-1']);hash=location.hash;if(hash){_gaq.push(['_trackPageview',hash.substr(1)])}else{_gaq.push(['_trackPageview'])}}catch(err){}});</script>
</body>
</html>
