<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<title>Dali Museum </title>

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

<h2><strong>Dali Museum</strong></h2>
<p>1 Dali Blvd, St. Petersburg Florida</p>
<img src="images/dali_museum.jpg" alt="Location Photo">
<div id="content">
<br />
<p>The new 74,124 square foot  building is located adjacent to the Mahaffey Theater and Albert Whitted Airport  along the city’s downtown waterfront district.   The location of the Dali museum prior to the move was 1000 3rd  Street South. The museum’s new location opened on 1/11/11 at 11:11am. The city  is fortunate to have one of only two museums dedicated to the world renowned  artist. The building’s design in and of itself is an iconic piece of  architecture that adds to the city’s diverse architectural styles.</p>
<br />



<div data-role="collapsible">
<h3>Architecture</h3><br />
<p>The Enigma is an external  glass edifice that emerges from the main building structure emulating a  cascading river of glass, wrapping the museum’s exterior grounds. The Grotto  consists of a series of large boulder column formations that weep water,  defining its main entry. And, as a dominating artistic statement of the  museum’s interior, there is the staircase which replicates the structure of DNA  threading itself throughout the three story building.</p>
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
<a href="http://maps.google.com/maps?q=1+Dali+Boulevard,+St.+Petersburg,+FL&hl=en&sll=27.776348,-82.641284&sspn=0.007907,0.009645&oq=1+Dali+Blvd&hnear=1+Dali+Blvd,+St+Petersburg,+Florida+33701&t=m&z=17" data-theme="e" data-role="button" target="_blank" >Map It</a>

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
