<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<title>Sunshine Center</title>

</head>

<body>

<!--Banner with Logo-->
<div id="header" data-role="header" data-theme="b">
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
    </div><!-- /banner -->                                                   

<div id="crumbs">
	<a href="http://www.stpete.org/mobile/" data-ajax="false"  data-role="button" data-icon="home" data-theme="d">Home</a>
    <a href="http://www.stpete.org/mobile/scanstpete.htm" data-ajax="false"  data-role="button" data-icon="back" data-theme="d">Scan St Pete</a>
</div><!-- /crumbs -->

<div data-role="navbar">
	<ul>
		<li><a href="scanstpete.htm#attractions" data-ajax="false" class="ui-btn-active" >Attractions</a></li>
                                <li><a href="scanstpete.htm#historic"  data-ajax="false">Historic</a></li>
                                <!--<li><a href="scanstpete.htm#parks"  data-ajax="false" >Parks</a></li>-->
</ul>
</div><!-- /navbar -->
</div><!--close header-->

<div data-role="content">

<h2><strong>Sunshine Center</strong></h2>
<p>330 5th Street North, St. Petersburg Florida</p>
<img src="images/sunshine_center.jpg" alt="Location Photo">
<div id="content">
<br />
<p>&nbsp;</p>
<p>In 2002, the Sunshine  Senior Center, 330 Fifth Street North, became the first nationally accredited  senior center in the State of Florida. The National Council on Aging and  National Institute of Senior Centers recognized the Sunshine Center as  continually providing outstanding service, programs and activities to its older  residents. The Center houses agencies such as: Neighborly Senior Services with  Congregate Dining and Meals on Wheels; Good Life Games - a senior olympics  organization; AARP Foundations Senior Community Service Employment Program;  Lion's Club Eye Clinic; Suncoast Center for Community Mental Health; Kids &amp;  Kubs 3/4 Century Softball Club Headquarters; and St. Petersburg International  Folk Fair Society.</p>
<p><br />
    
 
  
    <!-- 
<div data-role="collapsible">
<h3>History</h3><br />
<p>In 1926, St. Petersburg  officials decided to construct an airport on a landfill by Bayboro Harbor, south  of the downtown area. On October 12, 1928, a resolution was passed by the Board  of Commissioners establishing the Albert Whitted Municipal Airport. The airport  officially opened in 1929 with a narrow shell runway. It is the first and only  municipally owned facility and the only airport to be built in the downtown  area. Within a few months of the airport’s opening, the City authorized $33,062  for the construction of a blimp hangar. The following year, the Goodyear Blimp  moved into this hangar and called it home for the next fifteen years. In  January 1931, the airport acquired Hangar No. 1.<br /></p>
</div>
-->
  
  
</p>
</div><!-- END content div -->
<br />
<hr/>
<a href="http://maps.google.com/maps?q=330+5th+Street+North,+St.+Petersburg,+FL&hl=en&sll=27.789292,-82.638537&sspn=0.007906,0.009645&oq=330+5th+Street+North&hnear=330+5th+St+N,+St+Petersburg,+Pinellas,+Florida+33701&t=m&z=17" data-theme="e" data-role="button" target="_blank" >Map It</a>

</div><!-- end data role content -->
<!--footer-->
<div id="footer" data-role="footer" data-theme="d">
    <div data-role="navbar">        <ul>
            <li><a href="index.htm" data-ajax="false" >Home</a></li>
<li><a href="events.htm" data-ajax="false" >Events</a></li>
            <li><a href="news.htm" data-ajax="false" >News</a></li>
            <li><a href="contact.htm" data-prefetch>Contact</a></li>
<li><a href="#"   onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/index.asp?LeftMobileSite';">Full Site</a></li>
        </ul>
        <p id="copyright">Copyright 2012, All Rights Reserved</p>
    
    </div><!-- /navbar -->
</div><!--/footer-->
<script type="text/javascript">$('[data-role=page]').live('pageshow',function(event,ui){try{_gaq.push(['_setAccount','UA-8738346-1']);hash=location.hash;if(hash){_gaq.push(['_trackPageview',hash.substr(1)])}else{_gaq.push(['_trackPageview'])}}catch(err){}});</script>
</body>
</html>
