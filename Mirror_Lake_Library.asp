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

<h2>Mirror Lake Library</h2>
<p>280 5th Street North, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/mirror_lake_library.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>Mirror Lake Library was built in 1915 and was the first public library system in the city.  It was built with a grant awarded by the Andrew Carnegie Corporation. It is also important as an example of Andrew Carnegie’s philanthropy which has had a major impact on the development of American culture.</p>
<br />
<div data-role="collapsible">
<h3>History</h3><br />
<p>Built in 1915, the Mirror  Lake Library is significant to the city’s history as the first permanent home  of the public library system and embodies the transformation of the city in the  second decade of the twentieth century from a pioneer village to a city with  viable cultural institutions. It is also important as an example of Andrew  Carnegie’s philanthropy. In 1913, when the City of St. Petersburg was awarded a  grant by the Carnegie Corporation to build the library, it was the culmination  of a five-year pursuit spearheaded by Councilman Ralph Veillard, W.L. Straub,  and Annie McCrae. The $17,500 Carnegie grant was approved by the city and the  Mirror Lake site was chosen on July 17, 1914.</p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The Beaux-Arts style, as  evidenced by the State Theater and the Princess Martha Hotel, is a highly  ornamental style of architecture that originated from the <em>Ecole des  beaux-arts </em>which spawned a generation of American Neoclassical architects  and buildings. It emphasizes a strongly symmetrical facade and may feature  classical detailing, such as the dentils pilasters, and cornice returns found  on the library. Neoclassicism taught classical, as well as exotic styles, and  mixed the two for a unique effect. Henry D. Whitfield was the building’s  architect. Whitfield worked for the Carnegie Corporation and designed the St.  Petersburg library at his office at 160 Fifth Avenue in New York City. He was  responsible for the designs of many libraries for the Carnegie Foundation  across the nation in the Beaux Arts tradition.</p>
</div>


    </div><!-- END content div -->
<br />
<hr/>
<a href="http://maps.google.com/maps?q=City+Hall+near+Saint+Petersburg,+FL&hl=en&ll=27.774051,-82.639761&spn=0.030757,0.038581&sll=31.052934,-65.039062&sspn=59.118076,79.013672&vpsrc=6&hq=City+Hall&hnear=St+Petersburg,+Pinellas,+Florida&t=m&fll=27.771735,-82.643538&fspn=0.059692,0.077162&z=15&iwloc=A" data-theme="e" data-role="button" target="_blank" >Map It</a>
<a href="http://www.splibraries.org/Mirror_Lake.htm" data-role="button" target="_blank" > Visit Website </a>

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
