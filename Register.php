<?php
    session_start();
    include('connect.php ')
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="register.css">
</head>
<body>

    <?php
       include("connect.php");
       if(isset($_POST['submit'])){
            $firstname = $_POST['firstname'];
            $lastname = $_POST['lastname'];
            $username = $_POST['username'];
            $password = md5($con->real_escape_string($_POST['password']));
            $emall = $_POST['emall'];
            
            $sqlInsert = "INSERT INTO customer (firstname,lastname,username,password,email,active) VALUES('$firstname','$lastname','$username','$password','$emall','0')";

            $result = $con->query($sqlInsert);
            if($result){
                echo "<script> alert('Register Complete');</script>";
                header("Location: login.php");
            }
            else{
                echo "Error During insert:".$con->error;
            }
       }
    ?>

    <div class="container">
        <div class="row">
            <form action="" method="post">
                <div class="col-md-8 col-md-offset-2" style="margin-top:50px;">
                    <div class="panel panel-info">
                        <div class="panel-heading text-center">
                            สมัครสมาชิก
                        </div>
                        <div class="panel-body">

                        <div class="form-group row">
                                <label for="firstname" class="col-md-3">Firstname : </label>
                                <div class="col-md-9">
                                    <input type="text" name="firstname" class="form-control">
                                </div>
                            </div>
                
                            <div class="form-group row">
                                <label for="lastname" class="col-md-3">Lastname : </label>
                                <div class="col-md-9">
                                    <input type="text" name="lastname" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="username" class="col-md-3">Username : </label>
                                <div class="col-md-9">
                                    <input type="text" name="username" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-3">Password : </label>
                                <div class="col-md-9">
                                    <input type="password" name="password" class="form-control">
                                </div>
                            </div>
                
                            <div class="form-group row">
                                <label for="email" class="col-md-3">E-mail : </label>
                                <div class="col-md-9">
                                    <input type="email" name="email" class="form-control">
                                </div>
                            </div>

                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-success btn-block" name="submit">Register</button>
                        </div>
                    </div>
            </form>
        </div>
    </div>
      
       </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>