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
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
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

<h2>Snell Arcade</h2>
<p>405 Central Avenue, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/snell_arcade.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>Built in 1928, the Snell Arcade is a fine example of Mediterranean Revival architecture built by C. Perry Snell.  Other than Snell’s own real estate office there was a predictable array of stores for that period.  There was a smoke house and an outdoor nightclub called Spanish Bob’s.  There are offices in the Snell Arcade today but several floors have recently been turned into condos. </p>
<br />
<div data-role="collapsible">
<h3>History</h3><br />
<p>The Snell Arcade was built  in 1928 by C Perry Snell. He was an important early figure in the development  of the community. In 1905 he began his second profession – that of a real  estate<strong> </strong>developer – and his list  achievements in the field are indeed impressive. Generally, Snell developed  most of the property east of Fourth Street and Fifth Avenue North to the  northern limit of Snell Isle. In addition, he and his associates developed much  of the land around Mirror Lake and Crescent Lake. Quickly establishing his  properties as premier status residential areas, Snell gave them prestigious  names such as Bayfront, North Shore and Granada Terrace. In 1925, amidst the  boom period, he began Snell Isle – one of his most significant developments in  St.<strong></strong><br>
Petersburg – an impressive  series of homes in Spanish and Italian architectural style.</p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>Significant exterior  features reflective of the style on the Snell Arcade include polychromatic  architectural terra cotta, the copper canopy which shades the first floor, and  the use of Florida keystone as an exterior fabric. The terra-cotta skin begins  at the second floor with a band of detailing that includes Italianate rounders  with a foliated design on each side of the window sill. Windows on the south,  east and north are paired with a twisted column pilaster and foliated capital  between. Below the window sill at the third floor, there is a bas-relief detail  continued<br>
on all three sides of the  building, interrupted only by the thickened wall of the tower. This same detail  is repeated on the copper canopy fascia. On each side of the south Arcade entry  are terra-cotta pilasters that further reinforce and celebrate the entry. All  this is topped off with an ornately designed parapet in blues and yellows and  finials in blue and yellow.</p>
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
