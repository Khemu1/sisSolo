<?php
session_start();
session_destroy();
header("location: http://localhost/views/php/index.php");
exit();