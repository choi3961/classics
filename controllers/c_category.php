<?php
/*
    This class is for filtering against the producers'(farmers') webpages.
    It filters the pages according to the areas(bigger and smaller) or categories 
    of agricultural products.
*/
class category_controller extends base_controller{
    
	public function __construct(){
		parent::__construct();
	}

    /*
        This shows the category of English classics.
    */
    public function category($cat){ 
        //echo $cat;

        $this->template->content = View::instance('v_index_index');
        $this->template->content->content02 = View::instance("v_category");
        $this->template->content->title = $cat;

        $this->template->content->content02->category=$cat;
        echo $this->template;
    }



	public function book($part){

        $temp = $part;
        echo $temp;


        $q = "select book_id from category  where book_title = '$temp';";
        $title = DB::instance(DB_NAME)->select_row($q);

        $received = "received";
        $num = $title['book_id'];
        $html = ".html";
        $file_name = $received.$num.$html;

        $book = file_get_contents("book/$file_name");
        echo $book;
    }

      
}

