<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<title>The Coliseum</title>

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

<h2>The Coliseum</h2>
<p>535 4th Avenue North, St. Petersburg Florida</p>
<img src="images/coliseum.jpg" alt="Location Photo">
<div id="content">
<br />
<p>The circa 1924 Coliseum, designed in the Mediterranean Revival style, is one of the South’s largest operating ballrooms and is the center for community social events and dancing. Designed as a ballroom facility to enhance the City's tourism, the Coliseum soon became a major southern destination for performers of the swing era during the 1920s and 1930s. Big name entertainers of the swing era made the Coliseum a regular stop on the travel circuit. Performers included Louis Armstrong, Duke Elington, Dizzy Gillespie, Ted Lewis, Guy Lombardo and many more.</p>
<br />



<div data-role="collapsible">
<h3>Architecture</h3><br />
<p>The Coliseum's volumetric  interior space is unique and has not changed over the history of the building.  The interior space gains its beauty from its structural design. The building's  arched roof is supported by 13 large wooden trusses. Each truss spans 128 feet  and weighs nine tons. These curved trusses were used to create the same  acoustic qualities of the Tabernacle in Salt Lake City. The ceiling was  constructed of tongue-and-groove wooden boards. At the time of construction the  newly proposed state-of-the-art lighting system was described to be &quot;a  feature worth traveling a long distance to see.&quot; The 13 wood trusses  contained an intricate lighting system with lights facing the Coliseum ceiling.  The system also contained a Rotary Jewel lighting system comprised of four  cone-shaped cylinders fastened together to form a square. The cones were made  of cedar reinforced with plaster of paris and covered with mirrors.  Electrically operated, the &quot;Jewel&quot; revolved slowly for moonlight  dances.</p>
</div>

<!-- 
<div data-role="collapsible">
<h3>History</h3><br />
<p>In 1926, St. Petersburg  officials decided to construct an airport on a landfill by Bayboro Harbor, south  of the downtown area. On October 12, 1928, a resolution was passed by the Board  of Commissioners establishing the Albert Whitted Municipal Airport. The airport  officially opened in 1929 with a narrow shell runway. It is the first and only  municipally owned facility and the only airport to be built in the downtown  area. Within a few months of the airport’s opening, the City authorized $33,062  for the construction of a blimp hangar. The following year, the Goodyear Blimp  moved into this hangar and called it home for the next fifteen years. In  January 1931, the airport acquired Hangar No. 1.<br /></p>
</div>
-->


  </div><!-- END content div -->
<br />
<hr/>
<a href="http://maps.google.com/maps?q=535+4th+Avenue+North,+St.+Petersburg,+FL&hl=en&ll=27.776348,-82.641284&spn=0.007907,0.009645&sll=27.77651,-82.632303&sspn=0.007907,0.009645&oq=535+4th+Avenue+North+&hnear=535+4th+Ave+N,+St+Petersburg,+Florida+33701&t=m&z=17" data-theme="e" data-role="button" target="_blank" >Map It</a>

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
