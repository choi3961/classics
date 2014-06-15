<?php

$q = "select book_title from category where book_category = '$category';";
//echo $this->template->content->category;
$result = DB::instance(DB_NAME)->select_rows($q);


//echo $result;
foreach($result as $res){
	
	$book_title = $res['book_title'];

	//processes some special chracter like "'" if there is any special chracter in the string, .

	$pos = strpos($book_title, "'");
	if($pos){
		$number = 0;
		for($j=0;strlen($book_title)>$j;$j++){
			
			if($book_title[$j]==="'"){
				$number++;
				if($number>1){
				echo "found<br>";
				echo $number."<br>";
				//echo $str."<br>";							
				}

				$book_title = substr_replace($book_title, "\\", $j, 1);
				$j++;
			}
		}
	}

	echo "<a href='/category/book/{$book_title}'>".$book_title."</a><br>";
}


//echo "<pre>";
//print_r($result);
//echo "</pre>";