<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="mstpete.css" rel="stylesheet" type="text/css" />
<link href="http://www.stpete.org/scripts/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mobile-1.1.0.min.js"></script>
<script src="https://www.google.com/jsapi?key=ABQIAAAA3HxOQOL8rcl8b5IEkcw6FxSNyhnIJUuFeZdyc1CS7kFoPfuIoBTBalePKIZjxQYelAngbvvnNE7qPw" type="text/javascript"></script>
<script>
 $(document).ready(function() {
  // disable ajax nav
  $.mobile.ajaxLinksEnabled = false;
 });
</script>

<style type="text/css">
body .ui-li .ui-li-desc {
 white-space: normal;
 }
body .ui-li .ui-li-heading {
 white-space: normal;
 } 
 body .ui-footer .ui-title {
 white-space: normal;
 }
</style>

<title>Mobile St Pete</title>

<?php
// If "siteName" isn't in the querystring, set the default site name to 'nettuts'

$siteName = 'StPeteNews';


$cache = dirname(__FILE__) . "/cache/$siteName";
// Re-cache every three hours
if(filemtime($cache) < (time() - 900))
{
   // Get from server
   if ( !file_exists(dirname(__FILE__) . '/cache') ) {
      mkdir(dirname(__FILE__) . '/cache', 0777);
   }
   // YQL query (SELECT * from feed ... ) // Split for readability
   $path = "http://query.yahooapis.com/v1/public/yql?q=";
   $path .= urlencode('SELECT * FROM feed WHERE url="http://www.stpete.org/rss.xml"');
   $path .= "&format=json";

   // Call YQL, and if the query didn't fail, cache the returned data
   $feed = file_get_contents($path, true);

   // If something was returned, cache
   if ( is_object($feed) && $feed->query->count ) {
      $cachefile = fopen($cache, 'wb');
      fwrite($cachefile, $feed);
      fclose($cachefile);
   }
}
else
{
   // We already have local cache. Use that instead.
   $feed = file_get_contents($cache);
}

// Decode that shizzle
$feed = json_decode($feed);
?>

</head>

<body>

<!--Banner with Logo-->
<div id="header" data-role="header" data-theme="b">
    <table id="banner">
        <tr>
            <td id="logo"><a href="http://www.stpete.org/mobile/"><img src="http://www.stpete.org/images/logo.png" alt="pelican" /></a></td>
            <td id="palm"><img class="palm" src="http://www.stpete.org/images/palm.png" alt="palmtree" /></td>
        </tr>
    </table>                                                   

<div id="crumbs"><a href="http://www.stpete.org/mobile/" data-ajax="false" data-role="button" data-icon="home" data-theme="d">Home</a><!--&nbsp;&#124;&nbsp;The Vinoy Park Hotel--></div>
<div data-role="navbar">
	<ul>
		<li><a href="index.asp" data-direction="reverse">Home</a></li>
        <li><a href="events.php" data-direction="reverse">Events</a></li>
        <li><a href="news.php" class="ui-btn-active">News</a></li>
        <li><a href="contact.html" data-prefetch>Contact</a></li>
	</ul>
</div><!-- /navbar -->
</div><!--/header-->

<div data-role="content">
<h2>Latest News</h2><br/>

<div id="content">

<ul data-role="listview" data-theme="c" data-dividertheme="d" data-counttheme="e">
<?php foreach($feed->query->results->item as $item) { ?> 
    <li>
      <h1><?php echo $item->title; ?></h1>
      <h6>Published:<?php echo $item->pubDate; ?></h6>
      <p><?php echo $item->description; ?></p>
      
   </li>

<?php  } ?>
</ul>

<!--<script>$("#eventsfeed").first().data("role") == "listview";</script> -->


    </div><!-- END content div -->
<br />
</div><!-- end data role content -->
<!--Footer With Main Links-->
<div id="footer" data-role="footer" data-theme="d">
<div data-role="navbar">
	<ul>
		<li><a href="index.asp" data-prefetch>Home</a></li>
        <li><a href="events.php">Events</a></li>
        <li><a href="news.php">News</a></li>
        <li><a href="contact.html" data-prefetch>Contact</a></li>
		<li><a href="http://www.stpete.org/">Full Site</a></li>
	</ul>
    <p id="copyright">Copyright 2012, All Rights Reserved</p>

</div><!-- /navbar -->
</div>
<script type="text/javascript">$('[data-role=page]').live('pageshow',function(event,ui){try{_gaq.push(['_setAccount','UA-8738346-1']);hash=location.hash;if(hash){_gaq.push(['_trackPageview',hash.substr(1)])}else{_gaq.push(['_trackPageview'])}}catch(err){}});</script>
</body>
</html>
