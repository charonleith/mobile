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
<script src="http://www.stpete.org/scripts/jquery.validate.min.js"></script>
<!--<script src="js/gears_init.js" type="text/javascript"></script>
<script src="js/geo.js"></script>
 -->
<link rel="apple-touch-icon" href="image/Surprising-St_icon.png" />

<style type="text/css">
body .ui-li .ui-li-desc {
 white-space: normal;
 }
 body .ui-footer .ui-title {
 white-space: normal;
 }
 .portrait label.error, .landscape label.error {
    color: red;
    font-size: 16px;
    font-weight: normal;
    line-height: 1.4;
    margin-top: 0.5em;
    width: 100%;
    float: none;
}

.landscape label.error { 
    display: inline-block; 
    margin-left: 22%; 
}

.portrait label.error { 
    margin-left: 0; 
    display: block; 
}

em { 
    color: red; 
    font-weight: bold; 
    padding-right: .25em; 
}
.error {
    color: red;
    font-size: 16px;
    line-height: 1.4;
    margin-top: 0.5em;
    width: 100%;
    float: none;
    font-weight: bold; 
    padding-right: .25em; 

}
.hiddenselect{
	display:none;
}
</style>
<!--//$(document).bind('pageinit') {
	 
  // disable ajax nav
  $.mobile.ajaxLinksEnabled = false;
$("#gpsbutton").bind ("vmouseup", function (event) {
		// Request repeated updates.
		var watchId = navigator.geolocation.watchPosition(scrollMap);
 //Look up location function
	  if(geo_position_js.init()){
  		geo_position_js.getCurrentPosition(fill_input, fill_input_err,{enableHighAccuracy:true,options:5000});
		}
		else{
			alert("GPS not available");
		}
}
});
  // Fill the input box with GPS cords
  function fill_input(p) {
  $('#txtLocation').val("lat: "+p.coords.latitude+ ", lon: " +p.coords.longitude+ ", Acc: " +p.coords.accuracy);
  //alert("latitude "+p.coords.latitude.toFixed(2)+ ", longitude " +p.coords.longitude.toFixed(2));
  };
  //Error handleing
  function fill_input_err() {
  $('#gpsmsg').html('GPS Location Failed, please input manually');
  };
  
 -->	<script type="text/javascript">
$(document).ready(function() {
// validate signup form on keyup and submit
	$("#createReqForm").validate({
		rules: {
		},
		messages: {
			txtLocation: "Please enter your location",
			reqText: "Please enter your request",
			checkbox: "Please mark the agreement"
		}
	}); ///validate
// Submit button to submit via Ajax
$("#createReqForm").ajaxSubmit({url: 'https://actiononline.stpete.org/Click2GovCRS/RequestPersist.jsp', type: 'post'})

 $('#requestdrilldownselector').change(function(){
				$('.' + $(this).val()).show();
			}); 

});

</script>
<!-- /Unique to this page -->

<title>Watch Live TV</title>

</head>

<body>
<div data-role="page" id="pg1">
<div id="header" data-role="header" data-theme="b">
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
    </div><!-- /banner -->                                                   

<div id="crumbs">
	<a href="http://www.stpete.org/mobile/" data-ajax="false" data-role="button" data-icon="home" data-theme="d">Home</a>
    <a href="http://www.stpete.org/mobile/ustream.htm" data-ajax="false" data-role="button" data-icon="back" data-theme="d">Report</a>
</div><!-- /crumbs -->

<div data-role="navbar">
	<ul>
		<!--<li><a href="#pg1" class="ui-btn-active">Attractions</a></li>-->
	</ul>
</div><!-- /navbar -->
</div><!--/header-->

<div data-role="content" >
<h2>Action Online</h2>
		<p>Report issues to our Action Center on a variety of issues from your mobile device. Fill out the form below to anonomusly report an issue. Be sure to visit <a href="http://www.stpete.org/Action/">www.stpete.org/Action</a> from your PC for more features like the ability to create an account and track issues. </p>
<form name="createReqForm" id="createReqForm">
    <input type="hidden" name="userId" value="anonymous" />




<div data-role="fieldcontain">
    <label for="reqText-a">Request Type:</label>
      <select size="1" name="reqType" id="requestdrilldownselector" tabindex="1">
      	<option value="option_bc">Billing and Collections</option>
      	<option value="option_codes">Codes</option>
      	<option value="option_mac">Planning and Development</option>
      </select>
      
        <select size="1" name="reqType" id="reqType" tabindex="2">
          <option value="BCBT" >B&C BUSINESS TAX</option>
          <option value="BCFA" >B&C FALSE ALARMS-POLICE</option>
          <option value="BCPT" >B&C PARKING TICKETS</option>
          <option value="BCSP" >B&C SPECIAL ASSESSMENTS</option>
          <option value="BCUA" >B&C UTILITY ACCOUNTS</option>
          <option value="ZOND" >CODES-BOAT, RV, TRAILER, ETC.</option>
          <option value="ZONC" >CODES-COMMERCIAL VEHICLE</option>
          <option value="FEMA" >CODES-FEMA VIOLATION</option>
          <option value="ILLU" >CODES-ILLEGAL UNITS</option>
          <option value="JTD" >CODES-JUNK/OUTDOOR STORAGE</option>
          <option value="OG" >CODES-OVERGROWTH</option>
          <option value="SIGN" >CODES-PROHIBITED SIGN</option>
          <option value="PROP" >CODES-PROPERTY MAINTENANCE</option>
          <option value="PUSH" >CODES-PUSHCART VENDOR</option>
          <option value="CIP" >CODES-RENTAL UNIT INSPECTION</option>
          <option value="VEND" >CODES-ROADSIDE VENDING</option>
          <option value="UFIT" >CODES-UNFIT CONDITION</option>
          <option value="SECP" >CODES-UNSECURED POOL</option>
          <option value="BLGT" >CODES-VAC & BOARDED > 90 DAYS</option>
          <option value="SEC1" >CODES-VACANT & BOARDED STRUCT</option>
          <option value="SEC" >CODES-VACANT & OPEN STRUCTURE</option>
          <option value="IMVC" >CODES-VEH NO TAG/FLAT TIRE</option>
          <option value="IMV2" >CODES-VEH NON-WORK/MISS PARTS</option>
          <option value="PERM" >CODES-WORK WITHOUT PERMIT</option>
          <option value="PARC" >CODES-YARD PARKING</option>
          <option value="ZONE" >CODES-ZONING VIOLATION</option>
          <option value="COUN" >COUN-COUNCIL</option>
          <option value="ALTR" >MAC-ALLEY TREE TRIMMING</option>
          <option value="ALBL" >MAC-ALLEY/ST BLADING/PAVING</option>
          <option value="BARR" >MAC-BARRICADES</option>
          <option value="BEES" >MAC-BEES IN RIGHT OF WAY</option>
          <option value="CATC" >MAC-CATCH BASIN REPAIR/CLEAN</option>
          <option value="CADE" >MAC-CAVE IN/DEPRESSION</option>
          <option value="CURB" >MAC-CURB REPAIR</option>
          <option value="FISH" >MAC-DEAD FISH REMOVAL</option>
          <option value="DITC" >MAC-DITCH MAINTENANCE</option>
          <option value="DRAN" >MAC-DRAINAGE</option>
          <option value="FLOD" >MAC-FLOODING</option>
          <option value="GRAF" >MAC-GRAFFITI ISSUES</option>
          <option value="LAKE" >MAC-LAKE/POND MAINTENANCE</option>
          <option value="MEDI" >MAC-MEDIANS</option>
          <option value="PAVE" >MAC-PAVE MARKINGS/NEW SIGNAGE</option>
          <option value="HOLE" >MAC-POTHOLE</option>
          <option value="SEA" >MAC-SEAWALL MAINTENANCE</option>
          <option value="SWER" >MAC-SEWER LINE</option>
          <option value="WALK" >MAC-SIDEWALKS</option>
          <option value="MAIN" >MAC-SIGN MAINTENANCE</option>
          <option value="STRE" >MAC-STREET LIGHT NEW REQUEST</option>
          <option value="STRT" >MAC-STREET LIGHT TREE TRIMMING</option>
          <option value="STSW" >MAC-STREET SWEEPING</option>
          <option value="STPI" >MAC-STRMWTR PIPE REPAIR/CLEAN</option>
          <option value="TRER" >MAC-TREE REMOVAL IN ROW</option>
          <option value="ARBO" >MAC-TREE REMOVAL ON ROW</option>
          <option value="TREE" >MAC-TREE REMOVAL PRIVATE PROP</option>
          <option value="TRIM" >MAC-TREE TRIMMING IN ROW</option>
          <option value="NBHD" >NBHD -NEIGHBORHOOD PARTNERSHIP</option>
          <option value="ADDR" >PLAN-ADDR ASSIGNMENT QUESTIONS</option>
          <option value="ADUS" >PLAN-ADULT USE PERMITS</option>
          <option value="ALCB" >PLAN-ALCOHOLIC BEVERAGES</option>
          <option value="ANEX" >PLAN-ANNEXATION</option>
          <option value="BANK" >PLAN-BANK ON ST PETERSBURG</option>
          <option value="BEDN" >PLAN-BED & BREAKFAST APPROVALS</option>
          <option value="BDGP" >PLAN-BLDG PERMIT STATUS/QUEST</option>
          <option value="BRWN" >PLAN-BROWNFIELD</option>
          <option value="BUSI" >PLAN-BUSINESS INCENTIVES</option>
          <option value="CELP" >PLAN-CELL PHONE TOWERS PERMITS</option>
          <option value="CERT" >PLAN-CERTIFICATE OF OCCUPANCY</option>
          <option value="CRA" >PLAN-COMM REDEVELOPMENT AREAS</option>
          <option value="CRHA" >PLAN-COMM RESIDENTIAL HOMES</option>
          <option value="CPQA" >PLAN-COMP PLAN QUESTIONS</option>
          <option value="INSP" >PLAN-CONS INSPECTION QUESTIONS</option>
          <option value="DEMO" >PLAN-DEMOGRAPHIC INFORMATION</option>
          <option value="DOCK" >PLAN-DOCK PERMITS/QUESTIONS</option>
          <option value="DRIV" >PLAN-DRIVEWAY PERMITS</option>
          <option value="ENTZ" >PLAN-ENTERPRISE ZONE</option>
          <option value="ENVI" >PLAN-ENVIRONMENT PRESERVATION</option>
          <option value="FEML" >PLAN-FEMA/ELEVATION QUESTIONS</option>
          <option value="FENC" >PLAN-FENCES,WALLS,HEDGES</option>
          <option value="HIST" >PLAN-HISTORIC PROP QUESTIONS</option>
          <option value="IMPA" >PLAN-IMPACT FEES</option>
          <option value="LAND" >PLAN-LANDSCAPING REGULATIONS</option>
          <option value="MNST" >PLAN-MAIN STREETS</option>
          <option value="MAPS" >PLAN-MAPS AND GIS REQUESTS</option>
          <option value="MARK" >PLAN-MARKET RESEARCH DATA</option>
          <option value="MOBI" >PLAN-MOBILE VENDING PERMITS</option>
          <option value="PARK" >PLAN-PARKING LOT REQUIREMENTS</option>
          <option value="PLAN" >PLAN-PLAN REVIEW STATUS</option>
          <option value="PLAT" >PLAN-PLATS</option>
          <option value="PRCR" >PLAN-PROPERTY CARD INFORMATION</option>
          <option value="REDE" >PLAN-PROPOSED REDEVELOPMENT</option>
          <option value="SETB" >PLAN-SETBACK QUESTIONS</option>
          <option value="SIDE" >PLAN-SIDEWALK CAFE PERMITS</option>
          <option value="SIGB" >PLAN-SIGNS/BILLBOARD PERMITS</option>
          <option value="SITE" >PLAN-SITE PLAN REVIEW</option>
          <option value="SSAP" >PLAN-SOCIAL SRVC AGCY REQUIREM</option>
          <option value="TEMP" >PLAN-TEMPORARY USE PERMITS</option>
          <option value="TRRE" >PLAN-TREE REMOVAL QUESTIONS</option>
          <option value="UNCO" >PLAN-UNLICENSED CONTRACTOR</option>
          <option value="VACA" >PLAN-VACA-STREETS OR EASEMENTS</option>
          <option value="VARI" >PLAN-VARIANCE REQUESTS</option>
          <option value="WPER" >PLAN-WORK WITH OUT PERMITS</option>
          <option value="ZQUE" >PLAN-ZONING QUESTIONS</option>
          <option value="1010" >PM-ALLEY/STREET BLADING-GRAD</option>
          <option value="1090" >PM-BRICK STREET/ALLEY</option>
          <option value="1250" >PM-CURB REPAIR</option>
          <option value="1221" >PM-HEX</option>
          <option value="6750" >PM-MISCELLANEOUS</option>
          <option value="1320" >PM-OVERLAY</option>
          <option value="1310" >PM-POTHOLE REPAIR</option>
          <option value="1220" >PM-SIDEWALKS</option>
          <option value="1300" >PM-UTILITY CUT REPAIR</option>
          <option value="SACM" >SANITATION COMMERCIAL</option>
          <option value="SARS" >SANITATION RESIDENTIAL</option>
          <option value="ABON" >SPPD-ABANDONED VEHICLE ROW</option>
          <option value="INOP" >SPPD-INOP MOTOR VEH. ROW</option>
          <option value="NOIS" >SPPD-NOISE DISTURBANCE</option>
          <option value="PKG" >SPPD-PARKING ENFORCEMENT ROW</option>
          <option value="PREG" >SPPD-PARKING REGULATIONS</option>
          <option value="STW" >STW-STORMWATER MAINTENANCE</option>
          <option value="SIGL" >TO-SIGNALS</option>
          <option value="SIGS" >TO-SIGNS</option>
          <option value="STRP" >TO-STRIPING</option>
          <option value="STOP" >TRAN - ALL WAY STOP</option>
          <option value="BIKE" >TRAN - BICYCLE HAZARD</option>
          <option value="PKEN" >TRAN - PARKING ENFORCEMENT</option>
          <option value="PKRG" >TRAN - PARKING REGULATIONS</option>
          <option value="PEDE" >TRAN - PEDESTRIAN HAZARD</option>
          <option value="SPED" >TRAN - SPEEDING</option>
          <option value="CALM" >TRAN - TRAFFIC CALMING</option>
          <option value="WRDL" >WRD - WATER RESOURCES LIFT STA</option>
          <option value="WRDR" >WRD - WATER RESOURCES RECLAIM</option>
          <option value="WRDS" >WRD - WATER RESOURCES SEWER</option>
          <option value="WRDW" >WRD - WATER RESOURCES WATER</option>
       </select>
</div>


    <div data-role="fieldcontain">
        <label for="name">Location:</label> 
            <input type="text" name="txtLocation" id="txtLocation" tabindex="2" class="required" />
     <!--<a href="#" data-role="button" data-inline="true" id="gpsbutton">Get GPS</a><span id="gpsmsg" style="color:red;">--></span>
    </div>

    <div data-role="fieldcontain">
    <label for="reqText-a">Request:</label>
        <textarea name="reqText" id="reqText-a" name="reqText" tabindex="3" class="required"></textarea>
    </div>
    
    <input type="hidden" name="notify" tabindex="4" />

    <div data-role="fieldcontain">
    <input type="checkbox" name="notify" tabindex="4" class="required" id="checkbox"/>
    <label for="checkbox">I understand that in order to track my issue I must go to Action Online from a PC.</label>
    </div>
    
    <input name="submit" tabindex="5" type="submit" class="submit" value="submit">

 </form>   
        
        
        
        
        
        
        
        
        
        
</div><!-- /data role content -->

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
