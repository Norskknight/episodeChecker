<?php
    require_once 'vendor/autoload.php';
    use GuzzleHttp\Client;
    use GuzzleHttp\Exception\RequestException;
    
    if(true)
    {
    $url = "http://api.ponycountdown.com/";
    $client = new Client();
    
    try
    {
        $response = $client->request('GET', $url, []);
        $response_body = $response->getBody();
        $decoded_body = json_decode($response_body);
    } 
    catch (RequestException $e)
    {
        echo "HTTP Request failed\n";
        echo "<pre>";
        print_r($e->getRequest());
        echo "</pre>";
        if ($e->hasResponse()) 
        {
            echo $e->getResponse();
        }
    }
    
    if($decoded_body)
    {
        $dbc = mysqli_connect('localhost', 'root', '', 'project04');
        
        foreach ($decoded_body as $row)
        {
            $query = "INSERT INTO mlp VALUES ('$row->name','$row->time','$row->season','$row->episode','$row->duration')";
            mysqli_query($dbc, $query);
        }
        	mysqli_close($dbc);
    }
    }
?>