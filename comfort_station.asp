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

<h2>Comfort Station</h2>
<p>Northeast Corner of Bayshore Drive and 2nd Avenue Northeast, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/comfort_station.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>This comfort station is a public restroom nicknamed “Little St. Mary’s” for its similarity to St. Mary Our Lady of Grace Catholic Church.  Henry Taylor constructed this octagonal shaped restroom to mirror the church because he was not paid properly for the design of the church.</p>
<br />
<div data-role="collapsible">
<h3>History</h3><br />
<p>The 1927 Comfort Station  is significant as a rare and unaltered example of the Romanesque Revival style  of architecture which was designed by Henry Taylor. Henry Taylor also designed  two other Romanesque Revival style buildings located in St. Petersburg, one  called St. Mary Our Lady of Grace Catholic Church,  constructed in 1925. The similarity  between the Comfort Station and St. Mary's Church has spurred years of local  rumor and has given the Comfort Station the nickname &quot;Little St.  Mary's.&quot; Some say it was a gentle joke -- that Taylor had not been  satisfactorily paid for his church design told gave a similar design to the  city for the restroom.</p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The Comfort Station has an  octagonal shape and is capped with a red tile roof and a copper cupola and  finial. The octagonal shape stems from the Greek cross shape used in early  Roman churches. The building is constructed of several colors of brick, which is  typical of Romanesque Revival style buildings. The lines of deeply recessed,  rounded arched windows that are often found in Romanesque Revival style  buildings are also seen on the Comfort Station. The exterior of the Comfort  Station is adorned with stone carved title panels and stone carved columns.</p>
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
