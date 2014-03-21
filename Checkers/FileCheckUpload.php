<?php

class FileCheckUpload{
    
        public static function fileupload($newfilename) {//new filename->ilyen néven lessz elmentve a file
        if (file_exists($_FILES['file']['tmp_name'])) {
            $allowedExts = array("gif", "jpeg", "jpg", "png");
            $temp = explode(".", $_FILES["file"]["name"]);
            $extension = end($temp);
            if ((($_FILES["file"]["type"] == "image/gif") 
                    || ($_FILES["file"]["type"] == "image/jpeg") 
                    || ($_FILES["file"]["type"] == "image/jpg") 
                    || ($_FILES["file"]["type"] == "image/pjpeg") 
                    || ($_FILES["file"]["type"] == "image/x-png") 
                    || ($_FILES["file"]["type"] == "image/png")) 
                    && ($_FILES["file"]["size"] < 200000)  
                    && in_array($extension, $allowedExts) ) {
                if ($_FILES["file"]["error"] > 0) {
                    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
                    return false;
                } else {
                    echo "Upload: " . $_FILES["file"]["name"] . "<br>";
                    echo "Type: " . $_FILES["file"]["type"] . "<br>";
                    echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
                    echo "Temp file: " . $_FILES["file"]["tmp_name"] . "<br>";
                    if (file_exists("upload/" . $_FILES["file"]["name"])) {
                        echo $_FILES["file"]["name"] . " already exists. ";
                        return false;
                    } else {
                        move_uploaded_file($_FILES["file"]["tmp_name"], "upload/" . $newfilename);
                        echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
                        return true;
                    }
                }
            } else {
                echo "Invalid file </br>";
                return false;
            }
        } else {
            return true;
        }
    }
    
}