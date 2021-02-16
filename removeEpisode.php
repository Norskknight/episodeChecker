<?php
    require_once('authorize.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Remove Episode</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <h2>Remove an Episode</h2>

<?php

    require_once('connectvars.php');

    if (isset($_GET['season']) && isset($_GET['episode']) && isset($_GET['episodeName'])) {
        // Grab the post data from the GET
        $season = $_GET['season'];
        $episode = $_GET['episode'];
        $episodeName = $_GET['episodeName'];
        
        } 
        else if (isset($_POST['season']) && isset($_POST['episode']) && isset($_POST['episodeName'])) {
        // Grab the post data from the POST
        $season = $_POST['season'];
        $episode = $_POST['episode'];
        $episodeName = $_POST['episodeName'];
    }
     else {
        echo '<p class="error">Sorry, no Episode was specified for removal.</p>';
    }

    if (isset($_POST['submit'])) {
        if ($_POST['confirm'] == 'Yes') {
            // Connect to the database
            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

            // Delete the blog data from the database
            $query = "DELETE FROM mlp WHERE season = $season and episode = $episode LIMIT 1";
            mysqli_query($dbc, $query);
            mysqli_close($dbc);

            // Confirm success with the user
            echo '<p>episode of ' . $episodeName . ' S: ' . $season . ' E: ' . $episode  . ' was successfully removed.';
        }
        else {
            echo '<p class="error">The post was not removed.</p>';
        }
    }
    else if (isset($episode) && isset($season) && isset($episodeName)) {
        echo '<p>Are you sure you want to delete the following Episode?</p>';
        echo '<p><strong>episode: </strong>' . $episodeName . '<br /><strong>season: </strong>' . $season . '<br /><strong>episode: </strong>' . $episode;
        echo '<form method="post" action="removeEpisode.php">';
        echo '<input type="radio" name="confirm" value="Yes" /> Yes ';
        echo '<input type="radio" name="confirm" value="No" checked /> No <br />';
        echo '<input type="submit" value="Submit" name="submit" />';
        echo '<input type="hidden" name="episodeName" value="' . $episodeName . '" />';
        echo '<input type="hidden" name="season" value="' . $season . '" />';
        echo '<input type="hidden" name="episode" value="' . $episode . '" />';
        echo '</form>';
    }

    echo '<p><a href="admin.php">&lt;&lt; Back to admin page</a></p>';
?>

</body> 
</html>
