<?php
    //user name
    $username = 'jspink';
    $password = 'school';
    
    if (!isset($_SERVER['PHP_AUTH_USER']) 
            || !isset($_SERVER['PHP_AUTH_PW'])
            || ($_SERVER['PHP_AUTH_USER'] != $username) 
            || ($_SERVER['PHP_AUTH_PW'] != $password)) {
        header('HTTP/1.1 401 Unauthorized');
        header('WWW-Authenticate: Basic realm="episodes"');
        exit('<h2>Episodes Admin Page</h2>Sorry, you must enter a valid user name and password to access this page.<br><a href="index.php">home</a>');
        
            }


?>