<?php

    class Show 
    {
        
        private $episodeName;
        private $time;
        private $season;
        private $episode;
        private $duration;
      
        public function setEpisodeName($episodeName) {
            $this->episodeName = $episodeName;
        }
        public function setTime($time) {
            $this->time = $time;
        }
        public function setSeason($season) {
            $this->sea = $season;
        }
        public function setEpisode($episode) {
            $this->episode = $episode;
        }
        public function setDuration($duration) {
            $this->duration = $duration;
        }
    
      
    public function __construct($episodeName,$season,$episode) {		
    	$this->episodeName = $episodeName;
    	$this->season =$season;
    	$this->episode =$episode;
	}

        public function useConsumer() {
            exec ('videoConsumer.php');
        }

        public function addValuesToDB() {
            if (!empty($this->episodeName) && !empty($this->season) && !empty($this->episode) && is_numeric($this->season) && is_numeric($this->episode)) {
            $dbc = mysqli_connect('localhost', 'root', '', 'project04')
        	or die("Could not connect: " . mysql_error());
        	$query = "INSERT INTO mlp (episodeName, season, episode) VALUES ('$this->episodeName', '$this->season', '$this->episode');";
		    $data = mysqli_query($dbc, $query);
		    mysqli_close($dbc);
		    echo "added Episode :" . $this->episodeName." for Season :". $this->season.' Episode :' .$this->episode;
        }
        else{
            echo "need all information entered!";
            
        }
            
        }
        
        public function results() {
        	$dbc = mysqli_connect('localhost', 'root', '', 'project04')
        	or die("Could not connect: " . mysql_error());
		    $query = "SELECT * FROM mlp ORDER BY season , episode";
		    $data = mysqli_query($dbc, $query);
            self::createTable($data);
            mysqli_close($dbc);
        }
        
        public function createTable($data) {
             echo '<table>';
             echo '<tr><th>Episode Name</th><th>Season</th><th>Episode</th></tr>';
             while ($row = mysqli_fetch_array($data, MYSQL_BOTH )) { 
		            echo '<tr class="episodes"><td><strong>' . $row['episodeName'] . '</strong></td>';
		            echo '<td>S' . $row['season'] . '</td>';
		            echo '<td>E' . $row['episode'] . '</td>';
		            echo '<td><button class="image" value=mlp+'
		            . str_replace(' ', '+',$row['episodeName'])
		            .'>Show images</button>';
		            echo '</td></tr>';
    			    }
    			     echo '</table>';
        }
    }


?>