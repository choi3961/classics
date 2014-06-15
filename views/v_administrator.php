<!--
	This is for the administrator to update the database. 
	Never touch without authorization.
-->
<div class = 'container'>
	<div class = 'header'>
		<div class = 'header03'>Database Management</div>
	</div>
	<div class = 'container02'>
		<div>
			<form action = "administrator/insert_title" method = "post">
				<button>insert_title</button>		
			</form>
			<form action = "administrator/insert_category" method = "post">
				<button>insert_category</button>
			</form>
			<form>
				<button>insert_contents</button>
			</form>
			<form action = "author_insert" method = "post">
				<button>author- insert author name into the database</button>
			</form>
			<form action = "title_insert" method = "post">
				<button>title-only-insert</button>
			</form>
			<form action = "test" method = "post">
				<button>test-special character test</button>
			</form>
			<form action = "administrator/insert" method = "post">
				<button>insert_category_shortstory</button>
			</form>			

		</div>
		<span> This is not for the users. This is for the administrator. 
			Please don't upload any file.
		</span>
	</div>

</div>