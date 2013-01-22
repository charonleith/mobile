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

<h2>Ponce de Leon Hotel</h2>
<p>95 Central Avenue, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/ponce_de_leon.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>The Ponce de Leon is a Mission style hotel constructed in 1922 during the beginning of the Florida Land Boom, a period which saw St. Petersburg develop into a major resort city. It was the first major hotel in St. Petersburg to be situated along the waterfront and represents the transition from small scale, mainly frame boarding houses and hotels built before the World War I era to the large, masonry hotels built in the boom years of 1921-26. </p>
<br />

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>Designed by George  Feltham, a locally notable architect, the Ponce de Leon is a six-story steel  framed structure with concrete exterior clad in smooth stucco and contains a  basement along the east half of the building. Typical of this style is the  building’s flat roof, which is surrounded by a Mission-style parapet wall  trimmed with art stone coping. The building presents its prominent face to the  south, which contains the main entrance. The original entrance, located  asymmetrically along the eastern half of the south facade, was punctuated by  five round art stone arches supported by brick piers. The tan brick piers are  topped with art stone caps and a cornice with frieze bands on the east, south,  and west facades of the building. The open arcaded entrance porch, which provided  the transition from the street level to the lobby, was later enclosed as the  entrance was relocated just to the west. The south facade, which faces Central  Avenue, features four symmetrically placed balconies and a cantilevered tile  roof supported by decorative wood brackets. </p>
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
