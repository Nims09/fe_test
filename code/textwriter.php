<?php
if(isset($_POST['field1'])) {
    $data = $_POST['field1'] . "\n";

    $data = sanitizeInput($data);

    $ret = file_put_contents('FULL_PATH_TO/tmp/mydata.txt', $data, FILE_APPEND | LOCK_EX);
    if($ret === false) {
        die('There was an error writing this file');
    }
    else {
        echo "$ret bytes written to file";
    }
}
else {
   die('no post data to process');
}

// Sanitize the input
function sanitizeInput($data)
{
    if(trim($data) == "") return false;
    else
    {
        return filter_var($data, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
    }
}