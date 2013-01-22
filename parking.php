<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link href="css/mstpete.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.mobile.structure-1.1.0.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.mobile-1.1.0.min.js"></script>
    <link rel="apple-touch-icon" href="image/Surprising-St_icon.png" />

<!-- Unique to this page --> 
<script src="http://www.google.com/jsapi?key=ABQIAAAA6UwhiLOuwLGr-gSE5F-riRSNyhnIJUuFeZdyc1CS7kFoPfuIoBQwgML2mCgy3QqXduZ-4j5Kr-KetQ" type="text/javascript"></script>

<style type="text/css">
#map_canvas { 
	height: 300px;
}
.ui-body-c a.ui-link { color: #008595; font-weight: bold; text-decoration: none; }
.hidden { display:none; }
.min-width-480px label.ui-input-text { font-weight:bold; display: block; }
.adp-directions { width:100%; }
.adp-placemark, .adp-summary, .adp-legal { display:none; margin: 0; }
.adp-placemark, .adp-step, .adp-stepicon, .adp-substep{ border-top: none;text-align:center; vertical-align: middle; padding: 0.8em 0; background:#e9eaeb;color:#3e3e3e;text-shadow:0 1px 1px #fff;background-image:-moz-linear-gradient(top,#f0f0f0,#e9eaeb);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f0f0f0),color-stop(1,#e9eaeb));-ms-filter:"progid:DXImageTransform.Microsoft.gradient(startColorStr='#f0f0f0', EndColorStr='#e9eaeb')"}
.adp-directions tr { border:1px solid #b3b3b3; }
h2 { font-size: 16px; overflow: hidden; white-space: nowrap; display: block; }
.more { text-align: center; }

</style>
<script type="text/javascript">
	google.load("maps", "3", {'other_params':'sensor=true'});
</script>
<script src="js/jquery.ui.map.min.js"></script>
<!-- /Unique to this page -->

<title>Watch Live TV</title>

</head>

<body>

<!-- =-=-=-=-=-== list =-=-=-=-==-=-= -->
<div data-role="page" id="list">
<div id="header" data-role="header" data-theme="b">
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
    </div><!-- /banner -->                                                   

<div id="crumbs"><a href="http://www.stpete.org/mobile/" data-ajax="false" data-role="button" data-icon="home" data-theme="d">Home</a><a href="http://www.stpete.org/mobile/parking.php" data-ajax="false" data-role="button" data-icon="back" data-theme="d">Parking</a></div>
<!--
<div data-role="navbar">
	<ul>
		<li><a href="#list" class="ui-btn-active">List</a></li>
		<li><a href="#map_pg">Map</a></li>
	</ul>
</div> --><!-- /navbar -->

</div><!--close header-->

    <div data-role="content" >
		<div class="content-primary">
		<ul data-role="listview" data-theme="c">
            <li><a href="https://maps.google.com/maps?q=117+2nd+Street+North&hl=en&ll=27.772499,-82.635062&spn=0.005276,0.004823&sll=27.772539,-82.635089&sspn=0.005276,0.004823&t=h&hnear=117+2nd+St+N,+St+Petersburg,+Florida+33701&z=18" data-ajax="false" >
                    <img src="images/MidCore-BayWalk-Parking-Garage.jpg" >
                    <h3>MidCore/BayWalk Parking Garage</h3>
                    <p>117 2nd Street North - Closer to the center of downtown this garage will allow you easy access to much of downtowns nightlife, museums, resturants and shops.</p>
                </a></li>
            <li><a href="https://maps.google.com/maps?q=27.765284,-82.63157&num=1&t=h&z=18" data-ajax="false" >
                    <img src="images/Mahaffey-Dali_parking_garage.jpg" >
            <h3 >Mahaffey Parking Garage</h3>
                    <p >400 1st St S</p>
                    <p>(Available when not already in use by Mahaffey Theater) - Located next to the new Dali Museum , Mahaffey Theater and Albert Whitted Airport. </p>
                </a></li>
            <li><a href="https://maps.google.com/maps?q=27.773711,-82.628549&num=1&t=h&z=18" data-ajax="false" >
                    <img src="images/Dolphin_lot.jpg" >
          <h3>Pier Parking - Dolphin Lot</h3>
                    <p >401-899 2nd Ave NE - Conveniently located near The Pier, downtown waterfront and waterfront Museums and shops. Take the Trolley for an entertaining tour and access to all downtown has to offer. The Trolley runs every 15 minutes so there is never a long wait.  </p>
                </a></li>
            <li><a href="paybyphone.htm">
                   <img src="images/paybyfonemeter.jpg" >
        <h3 >Pay by Phone Street Parking!</h3>
                    <p >Through out downtown. Get reminder messages and fill up the meter remotely using just your phone so you never get another ticket or have to go running back to the meter. </p>
                    </a></li>
        </ul>

	</div>
</div><!-- end data role content -->
<!--footer-->
<div id="footer" data-role="footer" data-theme="d">
    <div data-role="navbar">
        <ul>
            <li><a href="index.htm" data-ajax="false">Home</a></li>
            <li><a href="events.htm" data-ajax="false">Events</a></li>
            <li><a href="news.htm" data-ajax="false">News</a></li>
            <li><a href="contact.htm" data-prefetch>Contact</a></li>
            <li><a href="#" data-ajax="false" onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/index.asp?LeftMobileSite';">Full Site</a></li>
        </ul>
        <p id="copyright">Copyright 2012, All Rights Reserved</p>
    
    </div><!-- /navbar -->
</div><!--/footer-->
</div><!-- /page -->

<!-- =-=-=-=-=-== map =-=-=-=-==-=-= -->
<div data-role="page" id="map_pg">
<div id="header" data-role="header" data-theme="b">
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
    </div><!-- /banner -->                                                   

<div id="crumbs"><a href="http://www.stpete.org/mobile/" data-ajax="false" data-role="button" data-icon="home" data-theme="d">Home</a><a href="http://www.stpete.org/mobile/parking.php" data-ajax="false" data-role="button" data-icon="back" data-theme="d">Parking</a></div>
<div data-role="navbar">
	<ul>
		<li><a href="#list" data-direction="reverse" >List</a></li>
		<li><a href="#map_pg" class="ui-btn-active">Map</a></li>
	</ul>
</div><!-- /navbar -->
</div><!--/header-->
			<script type="text/javascript">
				$('#map_pg').live("pageshow", function() {
					
					$('#map_canvas').gmap( { 'center': getLatLng(), 'zoom': 12, 'callback': 
						function() {
							$.getJSON( 'http://jquery-ui-map.googlecode.com/svn/trunk/demos/json.json', 'category=activity', function(data) { 
								$.each( data.markers, function(i, m) {
									$('#map_canvas').gmap('addMarker', { 'position': new google.maps.LatLng(m.lat, m.lng) } );
								});
							});
						function (map) {
							if ( navigator.geolocation ) {
								watch = navigator.geolocation.watchPosition ( 
									function( position ) { 
										$('#map_canvas').gmap('clearMarkers');
										$('#map_canvas').gmap('addMarker', { 'title': 'You are here!', 'bound': true, 'position':new google.maps.LatLng(position.coords.latitude, position.coords.longitude) }, function(map, marker) {
											$('#map_canvas').gmap('addInfoWindow', { 'position': marker.getPosition(), 'content': 'You are here!' }, function(iw) {
												$(marker).click(function() {
													iw.open(map, marker);
												});
											});
											map.panTo( marker.getPosition() );
										});
									}
								);
							}
						}
					}); 
					
					function getLatLng() {
						if ( google.loader.ClientLocation != null ) {
							return new google.maps.LatLng(google.loader.ClientLocation.latitude, google.loader.ClientLocation.longitude);	
						}
						return new google.maps.LatLng(27.773063701419225, -82.64019012451172);
					}

				});
				
				$('#map_pg').live("pagehide", function() {
					if ( navigator.geolocation ) {
						navigator.geolocation.clearWatch(watch);
                    }
				});
				
				$('#map_pg').live("pagecreate", function() {
					var watch;
				});

			</script>

    <div data-role="content" >
		<div class="content-primary">
            <div id="map_canvas" data-fullscreen="true">
            
			</div><!--/div-->
	</div>
</div><!-- end data role content -->
<!--footer-->
<div id="footer" data-role="footer" data-theme="d">
    <div data-role="navbar">
        <ul>
            <li><a href="index.htm" data-ajax="false">Home</a></li>
            <li><a href="events.htm" data-ajax="false">Events</a></li>
            <li><a href="news.htm" data-ajax="false">News</a></li>
            <li><a href="contact.htm" data-prefetch>Contact</a></li>
            <li><a href="#" data-ajax="false" onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/index.asp?LeftMobileSite';">Full Site</a></li>
        </ul>
        <p id="copyright">Copyright 2012, All Rights Reserved</p>
    
    </div><!-- /navbar -->
</div><!--/footer-->

</div><!-- end page1 -->

<script type="text/javascript">$('[data-role=page]').live('pageshow',function(event,ui){try{_gaq.push(['_setAccount','UA-8738346-1']);hash=location.hash;if(hash){_gaq.push(['_trackPageview',hash.substr(1)])}else{_gaq.push(['_trackPageview'])}}catch(err){}});</script>
</body>
</html>
