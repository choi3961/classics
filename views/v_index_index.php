<!--
	This contains the contents of the page.
-->
<div class = 'header02'>
    <ul class = 'header02-ul'>
        <li><a href="/category/category/fiction" class = 'header02-local'>fiction&nbsp;</a></li>
        <li><a href="/category/category/non-fiction" class = 'header02-local'>non-fiction&nbsp; </a></li>
        <li><a href="/category/category/short stories" class = 'header02-local'>shortstories &nbsp;</a></li>
        <li><a href="/category/category/poetry" class = 'header02-local'>poetry &nbsp;</a></li>
        <li><a href="/category/category/drama" class = 'header02-local'>drama &nbsp;</a></li>
        <li><a href="/category/category/classical" class = 'header02-local'>classical &nbsp;</a></li>
        <li><a href="/category/category/young readers" class = 'header02-local'>youngreaders &nbsp;</a></li>

    </ul>
</div>  
<div class = 'container'>
	<!--
		This is the head part of of the page.
	-->

	<div class = 'contents-header'>
		<?php
			if(isset($title)){
			echo $title;
			}
		?>

	</div><br>
	<hr>

	<!--
		This is the left part of the landing page.
	-->
	<div class = 'lefter'>

	</div>

	<!--
		This is the body part 
	-->
	<div class = 'center'>

		<?php
		if(isset($content02)){
		echo $content02;
		}
		?>
	</div>

	<!--
		This is right part of the landing page.
	-->
	<div class = 'righter'>

	</div>
	
	<!--
		This is bottom part of the landing page.
	-->	
	<div class = 'footer'>

	</div>
</div>