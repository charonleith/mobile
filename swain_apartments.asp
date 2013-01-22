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

<h2>Swain Apartments</h2>
<p>: 1511 22nd Street South, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/10-Swain-Apartments.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>This two-story rectangular building was built in 1956 to house African-American Major League Baseball players in St. Pete.  At this time, black and white teammates could not house together.  Dr. Robert Swain and Dr. Ralph Wimbish fought to end segregation leading a movement to integrate housing in Major League Baseball.  The building is still in residential use today. </p>
<br />
<div data-role="collapsible">
<h3>History</h3><br />
<p>The Swain Apartments are  significant because they were used to house African-American major league  baseball players in St. Petersburg during spring training when these players  were denied housing with their white teammates. The fight to integrate  accommodations for spring training in St. Petersburg began with Dr. Robert  Swain and Dr. Ralph Wimbish, both members of the local chapter of the NAACP.  Both were prominent members of the African-American community who played  important roles in the struggle to end segregation and also owned properties  which were rented to African American baseball players for the New York Yankees  and the St. Louis Cardinals. Because of their efforts to expose the injustices  prevalent in spring training in St. Petersburg, Florida’s other spring training  sites were compelled to address their stand on the housing question and find  solutions for their players. As a result of their efforts, they were able to  entice the St. Louis Cardinals to integrate their housing. (The Yankees had  already relocated their spring facilities to Fort Lauderdale.)</p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The Swain Apartment building, a two-story rectangular shaped  structure which remains in residential use, was built in 1956 in the Masonry  Vernacular style, with concrete block covered with stucco. Structures of this  style tend to be simple, largely unornamented, and constructed out of readily  available materials. The windows and doors are symmetrically spaced on a facade  to form a regular rhythm of solids and voids called &quot;bays.&quot; Where  there is more than one floor, openings are aligned from floor to floor for  structural purposes. Decoration is simple and limited usually to string  courses, window and door lintels, window sills and cornices. The building also  exhibits some Contemporary Style features, such as wide eave overhangs and  brick window ledge treatments.</p>
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
