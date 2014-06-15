<!--
	This is the page for the adminstrator to upload the files and to control database.
	Never touch without authorization.
-->
<?php
class administrator_controller extends base_controller{
	public function __construct(){
		parent::__construct();

		// This is for Authorization.
		//////////////////////////////////
		if ((!isset($_SERVER['PHP_AUTH_USER'])) || (!isset($_SERVER['PHP_AUTH_PW']))) {
		    header('WWW-Authenticate: Basic realm="Secured Area"');
		    header('HTTP/1.0 401 Unauthorized');
		    echo 'Authorization Required.';
		    exit;
		} else if ((isset($_SERVER['PHP_AUTH_USER'])) && (isset($_SERVER['PHP_AUTH_PW']))){
		    if (($_SERVER['PHP_AUTH_USER'] != "aa") || ($_SERVER['PHP_AUTH_PW'] != "aa")) {
		       header('WWW-Authenticate: Basic realm="Secured Area"');
		       header('HTTP/1.0 401 Unauthorized');
		       echo 'Authorization Required.';
		       exit;
		    } else if (($_SERVER['PHP_AUTH_USER'] == "aa") || ($_SERVER['PHP_AUTH_PW'] == "aa")) {
		       //echo "<h1>Welcome Friends!</h1>";
		    }
		}
		//////////////////////////////////		
	}

	/*
		shows admininistrator page
	*/
	public function index(){
		
		$this->template->title="Database Management";
		$this->template->content = View::instance("v_administrator");
		echo $this->template;
	}

	/*	After reading the file, it parses the sentences 
		to insert the titles into the database.
		Inserts the title into the database.
	*/
	public function insert_title(){
		$n = 0;
		set_time_limit(300);
		$file_dir = "book/";
		$received = "received";
		$extension = ".html";
		for($i=0;$i<0;$i++){
			$n++;
			//file open
			$url = $file_dir.$received.$i.$extension;
			$fp = fopen($url,"r");

			//file processing 
			while(!feof($fp))
			{
				$string =fgets($fp);

				//filtering the strings according "<title>"
				$pos = strpos($string, "<title>");

				if ($pos !== false){
					$str = trim($string, "\t\n\r<title>/");

					break;
				}	
			}				

			//file close
			fclose($fp);

			//processes some special chracter like "'" if there is any special chracter in the string, .
			$pos = strpos($str, "'");
			if($pos){
				$number = 0;
				for($j=0;strlen($str)>$j;$j++){
					
					if($str[$j]==="'"){
						$number++;
						if($number>1){
						echo "found<br>";
						echo $number."<br>";
						//echo $str."<br>";							
						}

						$str = substr_replace($str, "'", $j, 0);
						$j++;
					}
				}
			}
	
			//title inserting
			$sql = "update category set book_title = '$str' where book_id = $i;";
			$user_id = DB::instance(DB_NAME)->query($sql);
		}
		echo "breaking for a moment";
		echo $n;
	}

	/*
		Insert categories of English classics.
		It opens the 8 files in the category directory.
		But category6.html file has no information about category
		So you must make another function for the category short-stories.
	*/
	public function insert_category(){
		$n = 0;
		set_time_limit(300);
		$file_dir = "category/";
		$category = "category";
		$extension = ".html";
		for($i=0;$i<0;$i++){
			$n++;
			//file open
			$url = $file_dir.$category.$i.$extension;
			$fp = fopen($url,"r");
			if($fp){
				echo $url." file opened<br>";
			}

			//file processing line by line
			$str = "s";
			while(!feof($fp)){
				
				$string =fgets($fp);
				//$pos = 0;

				//filtering the strings according to "book-title"
				$pos = strpos($string, "book-title");
				//$pos02 = strpos($string, "hello");		// This is for author's name to be filtered.

				
				// one line processing
				if ($pos !== false){
					$r=0;
					$start = $pos;
					$going = $pos;
					$bool = true;
					while($bool){

						$str ="s";
						//start from "book-title"
						if($string[$going] == ">"){
							$going = $going+1;

							//start to insert into $str character by character.
							while($string[$going] !== "<"){
								$str[$r] = $string[$going];									
								$r++;
								$going++;
								if($string[$going]=="<"){
									$bool = false;
									break;
								}
							}
						}
						else{
							$going++;
						}
					}

					//processes some special chracter like "'" if there is any special chracter in the string, .
					$pos = strpos($str, "'");
					if($pos){
						$number = 0;
						for($j=0;strlen($str)>$j;$j++){
							
							if($str[$j]==="'"){
								$number++;
								if($number>1){
								echo "found<br>";
								echo $number."<br>";
								//echo $str."<br>";							
								}

								$str = substr_replace($str, "'", $j, 0);
								$j++;
							}
						}
						echo $str."<br>";
					}	

					//category inserting. database processing.
					$sql = "update category set book_category = 'classical' where title_only = '$str';";
					$user_id = DB::instance(DB_NAME)->query($sql);
					echo $str."<br>";
					//end of category inserting

				}		
			}	
			//file close
			fclose($fp);
		}
		echo $n;

	}

	// insert author name into the database
	public function author_insert(){
		set_time_limit(300);
		//extract book_title from database
		$sql = "select book_title from category";
		$show = DB::instance(DB_NAME)->select_rows($sql);
		$point =0;

		//parse line by line by "by" extracting author name and inserting it into $author
		$roll=0;
		foreach($show as $show){
			$roll++;
			$parse = $show['book_title']."<br>";
			$author = "a";
			$length = strlen($parse);  //length of each line
			
			//parse a line
			/////////////////////////////////////////////////////////////
			$point = strpos($parse, 'by');

			for ($i=0; $i <$length-$point-3 ; $i++) { 
				$author[$i] = $parse[$i+$point+3];
				
			}
			
			//str_replace '<br>' with null in author
			$author = str_replace('<br>', '', $author);

///////////////////////////////
			//processes some special chracter like "'" if there is any special chracter in the string, .
			$pos = strpos($author, "'");
			if($pos){
				$number = 0;
				for($j=0;strlen($author)>$j;$j++){
					
					if($author[$j]==="'"){
						$number++;
						if($number>1){
						echo "found<br>";
						echo $number."<br>";
						//echo $str."<br>";							
						}

						$author = substr_replace($author, "'", $j, 0);
						$j++;
					}
				}
			}
			//End of processes some special chracter like "'" if there is any special chracter in the string, .
////////////////////////////////////


			////////////////////////////////////////////////////////////////
			//End of parse a line

			//put the author into the database.
			$q = "update category set book_author = '$author' where book_id = '$roll'; ";
			DB::instance(DB_NAME)->query($q);

			$point = 0;
		}			
	}

	// insert title name only into the database
	public function title_insert(){
		set_time_limit(300);
		//extract book_title from database
		$sql = "select book_title from category";
		$show = DB::instance(DB_NAME)->select_rows($sql);
		$point =0;

		//parse line by line by "by" extracting title name and inserting it into $title
		$roll=0;
		foreach($show as $show){
			$roll++;
			$parse = $show['book_title']."<br>";
			$title = "a";
			$length = strlen($parse);  //length of each line
			
			//parse a line
			/////////////////////////////////////////////////////////////
			$point = strpos($parse, 'by');

			for ($i=0; $i <$point-1 ; $i++) { 
				$title[$i] = $parse[$i];
			}
			
			//str_replace '<br>' with null in title
			$title = str_replace('<br>', '', $title);

///////////////////////////////
			//processes some special chracter like "'" if there is any special chracter in the string, .
			$pos = strpos($title, "'");
			if($pos){
				$number = 0;
				for($j=0;strlen($title)>$j;$j++){
					
					if($title[$j]==="'"){
						$number++;
						if($number>1){
						echo "found<br>";
						echo $number."<br>";
						//echo $str."<br>";							
						}

						$title = substr_replace($title, "'", $j, 0);
						$j++;
					}
				}
			}
			//End of processes some special chracter like "'" if there is any special chracter in the string, .
////////////////////////////////////


			////////////////////////////////////////////////////////////////
			//End of parse a line

			//put the title into the database.
			$q = "update category set title_only = '$title' where book_id = '$roll'; ";
			DB::instance(DB_NAME)->query($q);

			$point = 0;
		}			
	}


	// test special character against the database.
	public function test(){
		echo "test";

		//test "\"
		//$sql = "update category set book_title = 'Irremediable by Ella D\\ \'Arcy' where book_id = 3027;";
		//DB::instance(DB_NAME)->query($sql);

		//test """"

	}

	// This is to insert category of shortstories
	// It deals with the file category6.html in the category directory.
	public function insert(){
		set_time_limit(300);
		//fopen
		$fp = fopen("title_ss_m.txt", "r");
		if($fp){
			echo "file opened<br>";
		}
		// read string
		//$bool = true;
		//$roll3 =0;
		while(!feof($fp)){
			$str = fgets($fp);

///////////////////////////////
			//processes some special chracter like "'" if there is any special chracter in the string, .
			$pos = strpos($str, "'");
			if($pos){
				$number = 0;
				for($j=0;strlen($str)>$j;$j++){
					
					if($str[$j]==="'"){
						$number++;
						if($number>1){
						echo "found<br>";
						echo $number."<br>";
						//echo $str."<br>";							
						}

						$str = substr_replace($str, "'", $j, 0);
						//echo $str."<br>";
						$j++;
					}
				}
				

				
			}
			//End of processes some special chracter like "'" if there is any special chracter in the string, .
////////////////////////////////////
			//trim by "\r\n"
				$trimed = trim($str);


			//database input : category shortstory input
			$q = "update category set book_category = 'shortstory' where title_only = '$trimed'; ";
			DB::instance(DB_NAME)->query($q);

			//$bool = false;
			//echo $str."<br>";
			//$roll3++;
		}

	}	
}
