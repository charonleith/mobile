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

<h2>City Hall Annex</h2>
<p>175 5th Street North, St. Petersburg Florida</p>
<img data-fullscreen="true" src="images/city _hall_annex.jpg" alt="The Vinoy Park Hotel ballroom"/>
<div id="content">
<br />
<p>Built in 1901, the Domestic Science and Manual Training School is the oldest surviving school building in St. Petersburg and one of the oldest buildings in the downtown area. The school was made possible by Edwin H. Tomlinson, the City’s most prominent benefactor. The building is also an important example of Masonry Vernacular architecture and one of the first brick buildings to be constructed in St. Petersburg.</p>

<div data-role="collapsible">
<h3>Manual Training School</h3>
<p>The Manual Training School played an important role at that time, providing valuable vocational training for children. It also served as a community center for the residents of St. Petersburg and operated as an educational center specializing in vocational training from 1901 through 1925, after which these activities were moved to the Junior High School located on Mirror Lake. The Manual Training School was one of the earliest buildings constructed in St. Petersburg for educational purposes and the first vocational training school for children in
Florida.</p>
</div>

<hr/>
<div data-role="collapsible">
<h3>Different Purposes</h3>
<p>After  the Manual Training School was relocated to the school on Mirror Lake in 1925 (now  the Tomlinson Vocational School), the building became the offices of the  Chamber of Commerce from 1925 to 1930. After that year the Veterans of Foreign  Wars occupied the building until 1947, followed by the State Welfare Board  (1947-56), Child Guidance Clinic (1956-60), Welfare Offices (1960-1975), Office  on Aging and Public Works (1975-79) and the Neighborly Center (1979-1981). The  City has utilized the building since 1981, commonly known as the &quot;City  Hall Annex.&quot;</p>
</div>


<hr/>
<div data-role="collapsible">
<h3>Architecture</h3>
<p>The two-story Masonry  Vernacular building is rectangular in plan, measuring 36 ft. by 70 ft. The  building is a structure of brick exterior walls 12&quot; thick, with wood  framed floor, ceiling and roof systems. The building measures approximately 40  feet from the first floor to the roof peak.<br>
The Vernacular style is  often influenced by many different styles of architecture, rather than  following the tenets of any one specific school or method of design. For the  Vernacular style, practicality is often the key element governing the design, with  the function of the building, along with the use of local materials, climate  and traditions determining its final appearance and character. St. Petersburg  was still in its infancy when the Manual Training School was built, and the  school exhibits subtle elements of various styles common for that period.</p>
    </div>

    </div><!-- END content div -->
<br />
<hr/>
<a href="http://maps.google.com/maps?q=175+5th+Street+North,+St.+Petersburg,+FL&hl=en&sll=27.772976,-82.639991&sspn=0.007908,0.009645&oq=175+5th+Street+North&hnear=175+5th+St+N,+St+Petersburg,+Florida+33701&t=m&z=17" data-theme="e" data-role="button" target="_blank" >Map It</a>

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
