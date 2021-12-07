<?php
include 'conn.php';
if(isset($_POST['done'])){
    $c_id = $_POST['c_id'];
    $name = $_POST['name'];
    $email = $_POST['email'];

$q = "INSERT INTO `STUDENT` (`name`,`email`,`c_id`)
	VALUES('$name','$email','$c_id')";
$query = mysqli_query($con,$q);


}



?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script></head>
<body>
<div class = "col-lg-6 m-auto">
    <form method ="post">
        <br>
        
        <div class = "card">
            <div class = "card-header bg-dark">
                <h1 class = "text-white text-center">Insert operation </h1>


</div>
<br>
<br>
<label>class ID </label>
<input type = "number" name ="c_id" class = "form-control"><br>
<label>Name: </label>
<input type = "text" name ="name" class = "form-control"><br>

<label>Email: </label>
<input type = "text" name ="email" class ="form-control"><br>

<button class = "btn btn-success btn-lg" type="submit" name="done">Submit </button>
<br>
</div>
</form>
</div>

</body>
</html>
