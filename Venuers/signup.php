<?php
$insert = false;
if(isset($_POST['name'])){
  $server = "localhost";
  $username = "root";
  $password = "";

  $con = mysqli_connect($server, $username, $password);

  if(!$con){
      die("connection to this database failed due to".
      mysqli_connect_error());
  }
  
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $mobile = $_POST['mobile'];
  $gender = $_POST['gender'];
  $address = $_POST['address'];
  $pincode = $_POST['pincode'];

  $sql="INSERT INTO `registeration`.`register` (`name`, `email`, `password`, `mobile`, `gender`, `address`, `pincode`, `date`) VALUES
   ( '$name', '$email', '$password', '$mobile', '$gender', '$address', '$pincode', current_timestamp());";
   //echo $sql; 
   
   if($con->query($sql) == true){
      //echo "Successfully inserted";
      $insert = true;
   }
   else{
    echo "ERROR: $sql <br> $con->error";
   }

   $con->close();
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    .paina {
      text-align: center;
      background-color: black;
      color: white;
    }

    .center {
      margin: 0% 30%;
      /*margin-top: 30px;
	  width: 60%; */
      border: 3px solid #73AD21;
      padding: 9px;
      opacity: 0.8;
      top: 30%;

    }

    body {
      background-image:url("https://images.unsplash.com/photo-1511285560929-80b456fea0bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d2VkZGluZ3xlbnwwfHwwfHw%3D&w=1000&q=80");  
      background-size: cover; 
      
      background-attachment: fixed;
      background-repeat: no-repeat;
    }
  </style>
</head>

<body>
  <center>
    <h1 style="color:yellow"  ><b>REGISTERATION FORM</b></h1>
  </center>
  <?php
  if ($insert == true){
    echo "<center><h2><b>Thanks for filling registeration form</b><h2></center>";
    }
  ?>  

  <br>
  <form action="register.php" method="post">
    <div class="center">
      <div class="mb-3">

        <input type="text" name="name" class="form-control" id="name" aria-describedby="Name" placeholder="Name">


        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp"
          placeholder="Email address">

        <input type="password" name="password" class="form-control" id="password" placeholder="Password">

        <input type="text" class="form-control" id="mobile" placeholder="Phone number" name="mobile">

        <label style="background-color:white;"   ><h6><b>Gender:</b></h6></label><BR>
        <input type="radio" name="gender" id="gender"><b> Male</b> <br>
        <input type="radio" name="gender" id="gender"> <b>Female </b><br>
        <input type="radio" name="gender" id="gender"> <b>Other </b><br>
        <br>

        <h4>Address :</h4>


        <input type="text" class="form-control" placeholder="Address" required="" name="address" id="address">


        <input type="text" class="form-control" placeholder="Pincode" required="" name="pincode" id="pincode">

        <br>
        <center>

          <button class="btn" style="background-color:lightgreen">Submit</button>

        </center>

  </form>


</body>

</html> 