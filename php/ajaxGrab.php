
<?php
$articleUrl = $_GET['articleUrl'];

if(substr($articleUrl,0,22) == 'http://www.stpete.org/'){
	//Ajax load only if content if from stpete.org
    function get_tag( $xml ) {

        $tag_regex = '/<ul class="ajaxGrab"[^>]*>(.*?)<\\/ul>/si';
        // Grab div tag and its contents with the class name ajaxGrab

        preg_match($tag_regex,
        $xml,
        $matches);
        return $matches[1];
    }

    $yourentirehtml = file_get_contents($articleUrl);
    $extract = get_tag($yourentirehtml);
    echo $extract;
}
?>

