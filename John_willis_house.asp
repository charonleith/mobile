<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<title>City Hall</title>

</head>

<body>

<!--Banner with Logo-->
<div id="header" data-role="header" data-theme="b">
    <div id="banner">            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
</div><!-- /banner -->                                                   

<div id="crumbs">
	<a href="http://www.stpete.org/mobile/" data-ajax="false"  data-role="button" data-icon="home" data-theme="d">Home</a>
    <a href="http://www.stpete.org/mobile/scanstpete.htm" data-ajax="false"  data-role="button" data-icon="back" data-theme="d">Scan St Pete</a>
</div><!-- /crumbs -->

<div data-role="navbar">	<ul>
		<li><a href="scanstpete.htm#attractions">Attractions</a></li>
<li><a href="scanstpete.htm#historic" class="ui-btn-active" data-prefetch>Historic</a></li>
        <!--<li><a href="scanstpete.htm#parks">Parks</a></li>-->
</ul>
</div><!-- /navbar -->
</div><!--close header-->

<div data-role="content">

<h2>John Williams House</h2>
<p>Originally 511 2nd Street South, now on the USF-Bayboro Campus, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/john_williams_house.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>This 1891 Queen Anne is the home of John Williams, co-founder of the City of St. Petersburg. He platted the 100 ft wide streets, planned Williams Park and named the Detroit Hotel after his hometown in Michigan. The original building and later additions, located in the 400 block of 5th Avenue South, were also used as the Manhattan Hotel until the 1970s. It was later moved to the campus of the University of South Florida-Bayboro Campus.</p>
<br />
<div data-role="collapsible">
<h3>History</h3><br />
<p>Built in 1891, the  Williams House is the home of General John C. Williams, one of the co-founders  of St. Petersburg, and is one of the earliest surviving buildings in St. Petersburg.  John Constantine Williams, born in Detroit, Michigan in 1817, first visited the  Pinellas Peninsula in 1875. Shortly thereafter he purchased 1600 acres from the  State of Florida and W.F. Spurlin. Williams’ energies were devoted to bringing  a railroad into the area an effort which led him into negotiations with the  Orange Belt Railroad, headed by Russian exile, Peter A. Demens who was  searching for a terminus on the Gulf of Mexico. Williams completed construction  of the house in 1891, but resided there for only a few months before dying in  April 1892. In 1906, the Manhattan Hotel Company purchased the house and  converted it to a lodging use of the same name. The building was in hotel use  for nearly ninety years at its 444 5th Avenue South address before it was  purchased by the University of South Florida and moved to the Bayboro campus.<br /></p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The house was originally a  two-story frame house built in the Queen Anne style with an emphasis on  irregularity of plan and massing. The principal entry into the parlor is within  the veranda and set at a diagonal. All windows are double-hung sash with  colored glass borders in the upper half. The roof is pitched and once an  octagonal tower graced the structure but it has since been truncated. The house  retains all of the jigsaw trim typical of the period, paling posts refining the  veranda, hood mould over the corner door at the second level, and bargeboards resting  on brackets in the principal gables. Filled with fifteen rooms, the Williams  House boasted the finest in furnishings. High-priced hardwood crafted by  skilled carpenters winds up and down in tongue-in-groove wainscoting, a carved  mahogany grand staircase and doorways with monogrammed transoms tailored with a  &quot;W.&quot; The upper walls wear stenciled designs of palm leaves interrupted  midway by a seal surrounding a pink flamingo. Mirrors mounted above mahogany  mantles reflect waxed floors adorned with oriental rugs, an abundance of  antiques, and arches leading from parlor to parlor.</p>
</div>


    </div><!-- END content div -->
<br />
<hr/>
<a href="http://maps.google.com/maps?q=City+Hall+near+Saint+Petersburg,+FL&hl=en&ll=27.774051,-82.639761&spn=0.030757,0.038581&sll=31.052934,-65.039062&sspn=59.118076,79.013672&vpsrc=6&hq=City+Hall&hnear=St+Petersburg,+Pinellas,+Florida&t=m&fll=27.771735,-82.643538&fspn=0.059692,0.077162&z=15&iwloc=A" data-theme="e" data-role="button" target="_blank" >Map It</a>

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
