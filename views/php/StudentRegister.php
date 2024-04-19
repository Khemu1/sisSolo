<?php
require_once ("../../config/setup.php");
require_once ("../../models/Accounts.php");
require_once ("../../models/Courses.php");
require_once ("../../models/Enrollment.php");
require_once ("../../models/Students.php");
require_once ("../../models/Teachers.php");
require_once ("../../models/Teaches.php");
require_once ("../../models/Utils.php");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/StudentRegister.css">
  <title>Kemet Sign Up</title>
</head>

<body class="body-dark">

  <div class="container container-dark">
    <input type="checkbox" id="theme-switcher" class="theme-switcher">
    <label class="switch" for="theme-switcher"></label>
    <div class="head">
      <img class="main hide" src="../../assets/images/kemet-high-resolution-logo-transparent.svg">
      <img class="secondary" src="../../assets/images/kemet-high-resolution-logo-black-transparent.svg">
    </div>
    <div class="body">
      <h3>Student Registertion Form</h3>
      <form method="Post">
        <input type="text" name="userName" class="user-name" placeholder="UserName"><br>
        <div class="invalid-user-name hide">Invalid Username: the minimum length must be 6 characters and doesn't
          contain any symbols</div>
        <div class="used-username hide">This username is already used</div>
        <input type="text" name="name" class="name" placeholder="name"><br>
        <div class="invalid-name hide">Invalid name: the minimum length must be 6 characters and doesn't
          contain any symbols or numbers</div>

        <input type="password" name="password" class="password" placeholder="Password"><br>
        <div class="invalid-password hide">Invalid password: the minimum length must be 6 characters </div>

        <input type="text" name="address" class="address" placeholder="address"><br>
        <div class="invalid-address hide">Invalid address : the minimum length must be 6 characters and can contain
          numbers and sybmols like ",."</div>

        <input type="text" name="level" class="level" placeholder="level"><br>
        <div class="invalid-level hide">Invalid level: please enter a value between 1 and 2</div>

        <input type="submit" name="register" placeholder="Register" value="Register"><br>
        <a class="font-dark" href="index.php">Login</a>
      </form>
    </div>
    <div class="footer">
      <p class="font-dark">Powerd by Kemet SIS</p>
    </div>
  </div>

</body>

</html>

<?php

?>

<script type="module" src="../js/StudentRegister.js?t=<?= time() ?>"></script>
<script type="module" src="../js/Utils.js?t=<?= time() ?>"></script>