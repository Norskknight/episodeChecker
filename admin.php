<?php
    require_once('authorize.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Episode Administration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>

<body>
    <div class="jumbotron text-center">
    <h1>Show Administration</h1>
    <p>Below is a list of all episodes. Use this page to remove or add episodes as needed.</p>
    <a href="index.php">home</a>
 </div>
<?php
    require_once('connectvars.php');
	require_once('Show.php');
	if (isset($_POST['create'])) {
	    $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
		$episodeName = mysqli_real_escape_string($dbc, trim($_POST['episodeName']));
		$season = mysqli_real_escape_string($dbc, trim($_POST['season']));
		$episode = mysqli_real_escape_string($dbc, trim($_POST['episode']));
		$Show = new Show($episodeName , $season , $episode);
    	$Show->addValuesToDB();
	}	
?>
<div class="">
    	<form class="form-inline" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    	 <div class="form-group">   
		<label for="episodeName">Enter an episodeName :</label>
		<input class="form-control" type="text" id="episodeName" name="episodeName" value="<?php if (!isset($episodeName)) echo $episodeName; ?>" /><br />
		</div>
		 <div class="form-group">   
		<label for="season">Enter a season number :</label>
		<input class="form-control" type="text" id="season" name="season" value="<?php if (!isset($season)) echo $season; ?>" /><br />
		</div>
		 <div class="form-group">   
		<label for="episode">Enter an episode number :</label>
		<input class="form-control" type="text" id="episode" name="episode" value="<?php if (!isset($episode)) echo $episode; ?>" /><br />
		</div>
		<input class="btn btn-default" type="submit" value="Create" name="create" />
		</form>
</div>
<?php
    require_once('connectvars.php');

    // Connect to the database 
    $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

    // Retrieve the score data from MySQL
    $query = "SELECT * FROM mlp ORDER BY season , episode";
    $data = mysqli_query($dbc, $query);

    // Loop through the array of blog data, formatting it as HTML 
    echo '<table>';
     echo '<tr><th>Episode Name</th><th>Season</th><th>Episode</th></tr>';
    while ($row = mysqli_fetch_array($data)) { 
        // Display the score data
        
        echo '<tr class="episodes"><td><strong>' . $row['episodeName'] . '</strong></td>';
        echo '<td>S' . $row['season'] . '</td>';
        echo '<td>E' . $row['episode'] . '</td>';
        echo '<td><a href="removeEpisode.php?'. '&amp;episodeName=' . $row['episodeName'] . '&amp;season=' . $row['season'] .
            '&amp;episode=' . $row['episode'] . '">Remove</a>';
        echo '</td></tr>';
    }
    echo '</table>';

    mysqli_close($dbc);
?>

</body> 
</html>
