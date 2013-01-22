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

<h2>Open Air Post Office</h2>
<p>400 1st Avenue North, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/open_air_post_office.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>The Open Air Post Office is an important Mediterranean Revival building in St. Petersburg marking the transition from the city’s early Mission period to the rise of Beaux Arts historicism which would make its mark in the 1920s. The post office has served St. Petersburg since dedicated in 1916 and has become a landmark for residents and visitors alike. </p>
<br />

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The original plans drawn  by the government architect in the early 1900s called for a grand building set  well above the sidewalk level with many steps leading up to it. Unsatisfied  with these plans, Postmaster Roy Hanna submitted his own design which  envisioned a street level post office without any steps and open on all sides  allowing patrons to access their boxes at any hour. The design of the post  office was inspired by one of the icons of the early Italian Renaissance in  Florence. The design of the building called for loggia open on three sides to give  the public access to offices and postal boxes at all times. The facades which  face 4th Street and First Avenue North consist of highly ornamental arches,  terra cotta piers, column caps, marble columns, granite plinths, stucco spandrils,  and terra cotta disks. The frieze is also glazed terra cotta and the roof is  covered with Spanish tile. The vibrant colors used along the frieze give the  impression of colorful Mediterranean tiles and many varied motifs. The American  eagle, gargoyles and varied organic forms, contribute to the intricacy and  detail seen at the post office. In 1969, the south wall and south one-third of  the east wall were enclosed to allow for indoor service counters, air conditioning,  heating and additional postal boxes.</p>
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
