<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
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
            <li><a href="events.html">Events</a></li>
            <li><a href="news.html">News</a></li>
            <li><a href="contact.html" data-prefetch>Contact</a></li>
        </ul>
    </div><!-- /navbar -->
</div><!--/header-->

<div data-role="content" >
<h2>Top Stories</h2>
		<div class="content-primary">
		<ul data-role="listview" data-theme="c" data-inset="true">
                <li><img class="newsimage" src="../stpete/Road_Closed_detour.jpg"><h1>ROAD CLOSURE INFORMATION</h1><p>Beginning Monday, October 31 and lasting for approximately three weeks, Bayou Grand Blvd. NE near Dover St. NE will be closed to allow for storm drainage improvements. Traffic will be detoured to Shore Acres Blvd. and Venetian Blvd. NE during this period. For more information, contact 893-7400.</p><br></li>
                <li><img class="newsimage" src="../stpete/MNO_ChildsPkOct11.JPG"><h1>LAST CHANCE FOR FRONT-ROW SEAT</h1><p>Thursday, November 3 is your last opportunity this year for informal, one-on-one conversation when City Hall goes on the road for 'Mayor's Night Out.' Mayor Foster and City Council Member Jeff Danner host the 7 p.m. event at Gladden Park Center, 3901 30th Ave. N. City departments will also have staff on hand to discuss residential issues and offer resolution.&nbsp; Everyone is invited to attend the free event, regardless of where they live. </p></li>
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
