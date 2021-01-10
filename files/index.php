<h1>Hello World!</h1>
<?php
if ($_REQUEST['data'] != ''){
    file_put_contents("./data/file.txt", $_REQUEST['data']);
}

echo file_get_contents("./data/file.txt");