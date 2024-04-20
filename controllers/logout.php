<?php
session_start();
session_destroy();
header("location: http://sissolo.test/views/php/index.php");
exit();