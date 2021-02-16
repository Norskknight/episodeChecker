<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>project4</title>
<script src="jquery-3.2.1.min.js" charset="utf-8"></script>
<script src="ajax.js" charset="utf-8"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
    <div class="jumbotron text-center">
    <h1>Episode index and image search</h1>
    <p>Welcome, select an episode to view images.</p>
    <a href="admin.php">admin</a>
    </div>
    <div class="contaner">
    <div class="row">
    
    <div class="episodes table col-sm-5 pre-scrollable" >
            
        
    <?php
    require_once('Show.php');
    $show = new Show(mlp,0,0);
    $show->results();
    
    ?>
    </div>
    <div class="col-sm-4"></div>
    </div>
    </div>
    </body>