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
/* <script type="text/javascript">
$('#news').live('pageinit',function(event){
	//$('#AjaxLoadPage').load('php/grabArticle.php?articleUrl=http://www.stpete.org/news/2012/index.asp', function(){
			//Links behave as external to mobile site
			$('#AjaxLoadPage a').attr("data-ajax","false");
			//Set cookie so visitor does not redirect back
			$('#AjaxLoadPage a').click(function() {    
				document.cookie='nomobileplease=true;path=/';
				}); 
			//Change source of images since ajax load will not match original
			$('#AjaxLoadPage img').each(function() {    
				var origSrc = $(this).attr("src");
				if (!origSrc.indexOf("http") == 0) {
					$(this).attr("src",'http://www.stpete.org/' + origSrc);
				};
				}); 

			//Change hyperlink source to point to php proxy page
			$('#AjaxLoadPage a').each(function() {    
				var origSrc = $(this).attr("href");
				if (!origSrc.indexOf("http") == 0) {
					$(this).attr("href",'php/grabArticle.php?articleUrl=http://www.stpete.org/' + origSrc);
				};
				}); 
			});
});
</script> */

<!-- /Unique to this page -->

    <title>Mobile St Pete - Newsroom</title>
</head>

<body>

<!-- =-=-=-=-=-== Page 1 =-=-=-=-==-=-= -->
<div data-role="page" id="news">

<!-- header -->
<div id="header" data-role="header" data-theme="b">
    <div id="banner">
            <span id="logo"><a href="http://www.stpete.org/mobile/"><img src="images/logo.png" alt="Logo" /></a></span>
    </div> 
	
    <div data-role="navbar">
        <ul>
            <li><a href="index.htm" data-ajax="false">Home</a></li>
            <li><a href="events.htm" data-ajax="false">Events</a></li>
            <li><a href="news.htm" class="ui-btn-active" data-ajax="false">News</a></li>
            <li><a href="contact.htm" data-prefetch data-ajax="false">Contact</a></li>
        </ul>
    </div><!-- /navbar -->
</div><!--/header-->

<!-- \/\/\/\/\/\/\/\/\/ Page Content \/\/\/\/\/\/\/\/\/ -->
<div data-role="content" >
<span id="palm"></span>
<h2>Newsroom</h2>
<div id="container">
<?php
/*
    function get_tag( $attr, $value, $xml ) {

        $attr = preg_quote($attr);
        $value = preg_quote($value);

        $tag_regex = '/<div[^>]*'.$attr.'="'.$value.'">(.*?)<\\/div>/si';

        preg_match_all($tag_regex,
        $xml,
        $matches);
        //return $matches[1];
		
		// Loop through all the match for the tag
		foreach($matches[1] as $value) 
			{   
       			 print $value."<div style='clear:both'><hr/>";         
			}   
    }

    $yourentirehtml = file_get_contents("../../index.asp");
    $extract = get_tag('class', 'panel', $yourentirehtml);
    echo $extract;
*/
?>

<?php
$articleUrl = $_GET['articleUrl'];

    function get_tag( $xml ) {

        $tag_regex = '/<article[^>]*>(.*?)<\\/article>/si';

        preg_match($tag_regex,
        $xml,
        $matches);
        return $matches[1];
    }

    $yourentirehtml = file_get_contents($articleUrl);
    $extract = get_tag($yourentirehtml);
    echo $extract;
?>
</div>


<div data-role="navbar" data-theme="e" data-content-theme="e">
        <ul>
             <li><a href="#" data-ajax="false" onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/news';">View more news releases on the full website</a></li>
       </ul>
    
</div><!-- /navbar -->


</div>
<!-- \/\/\/\/\/\/\/\/\/ END Page Content \/\/\/\/\/\/\/\/\/ -->

<!--footer-->
<div id="footer" data-role="footer" data-theme="d">
    <div data-role="navbar">
        <ul>
            <li><a href="index.htm" data-prefetch>Home</a></li>
            <li><a href="events.htm" data-ajax="false">Events</a></li>
            <li><a href="news.htm" data-ajax="false">News</a></li>
            <li><a href="contact.htm" data-prefetch>Contact</a></li>
            <li><a href="#" data-ajax="false" onClick="document.cookie='nomobileplease=true;path=/'; window.location = 'http://www.stpete.org/index.asp?LeftMobileSite';">Full Site</a></li>
        </ul>
        <p id="copyright">Copyright 2013, All Rights Reserved</p>
    
    </div><!-- /navbar -->
</div><!--/footer-->

</div><!-- /page -->

<script type="text/javascript">$('[data-role=page]').live('pageshow',function(event,ui){try{_gaq.push(['_setAccount','UA-8738346-1']);hash=location.hash;if(hash){_gaq.push(['_trackPageview',hash.substr(1)])}else{_gaq.push(['_trackPageview'])}}catch(err){}});</script>
</body>
</html>

