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