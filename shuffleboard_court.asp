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

<h2>St. Petersburg Shuffleboard / Lawn Bowling Club</h2>
<p>559 Mirror Lake Drive North, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/shuffleboard.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>The game of shuffleboard,  originally known as &quot;shovel board,&quot; can trace its origins from the  fourteenth or fifteenth centuries. The modern day game of shuffleboard became  popular as a deck game on shipboard. The Shuffleboard Club is significant for  its association with the development of the tourist and leisure industries in St.  Petersburg during the 1920s. The St. Petersburg Shuffleboard Club was the first  organized club of its kind. It had thousands of members and served the  recreational needs of St. Petersburg's wintering tourists. Several tournaments  were held on the grounds, including the first state tournament in 1928. The  club is located in the Mirror Lake area which at the turn of the century was  known as Reservoir Lake and served as the source of the town’s drinking water.  Around the lake remain some of the most important relics of architecture in the  city including the Lawn Bowling Club, Coliseum, City Hall, Mirror Lake High School,  and the Carnegie Mirror Lake Library. </p>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The  Shuffleboard Club is an assemblage of sixty-five masonry courts, four masonry  buildings, a steel and concrete grandstand, freestanding frame and metal  porches and hexagon block patios and walkways. The original shuffleboard courts  were built on this parkland property in 1923 with Clubhouse construction  beginning four years later in 1927. The structure, designed by Harry Cunningham  of Goodhue and Associates originally was a small rectangular building with a steeply  pitched roof. A second building was built in 1929 and has similar architectural  details of the original building. Over the years the building complex was  enlarged to include the bridge club/dance hall in 1937 and the grandstands in  1939 as well as major additions to the 1927 and 1929 buildings.</p>
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
