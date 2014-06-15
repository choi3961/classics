<!DOCTYPE html>
<html>
<head>
	<title><?php if(isset($title)) echo $title; ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
	<link rel="stylesheet" type="text/css" href="/css/main.css">
    <link rel="stylesheet" type="text/css" href="/css/main02.css">
    
	<!-- Controller Specific JS/CSS -->
	<?php if(isset($client_files_head)) echo $client_files_head; ?>
</head>

<body>	
    <!-- This is the interface for the pages the users could access through easily -->
	<div id='menu'>
        <a href='/'>Home  </a> |
        <!-- Menu for users who are logged in -->
        <a href='/users/signup' class = 'menu-users'>Signup</a> |
        <a href='/users/login' class = 'menu-users'>Login</a> |
        <?php if($user):?>
            <a href='/users/logout'>Logout</a> |
            <a href='/posts/add' class = 'menu-posts'>Add-post</a> |
            <a href='/posts/index' class = 'menu-posts'>Following-posts</a> |
            <a href='/posts/mypage' class = 'menu-posts'>My-posts</a> |
            <a href='/posts/users' class = 'menu-posts'>Users</a> |
        <?php endif;?>
    </div>
    <div class = 'header01'>
            <a href="/">English Classics</a>


    </div>
  
    <?php if(isset($content)) echo $content; ?>

	<?php if(isset($client_files_body)) echo $client_files_body; ?>
    <script src = "/js/jquery.js"></script>
    <script src = "/js/control.js"></script>
</body>
</html>