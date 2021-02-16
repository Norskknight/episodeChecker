        <?php
         if (isset($_POST['callFunc1'])) {
        echo findImages($_POST['callFunc1']);
    }
        function findImages($searchTerm) {
            require_once("simple_html_dom.php");
            $searchTerm = str_replace(' ', '+', $searchTerm);
            
            $html = file_get_html('https://www.google.com/search?q='.$searchTerm.'&source=lnms&tbm=isch');
            
            // Find all images out put them to the page
            echo "<div class=\"images col-sm-4\">";
            foreach($html->find('img') as $element) {
            echo "<img src=\"" . $element->src . "\"></img>";
            }
            echo "</div>";
            }
            ?> 