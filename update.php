<?php

include 'conn.php';
if(isset($_POST['done'])){
    $id = $_GET['id'];
    $c_id = $_POST['c_id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $q = "UPDATE `STUDENT` SET id=$id, name='$name', email='$email',c_id='$c_id'
    WHERE id=$id ";
    $query = mysqli_query($con,$q);

    header('location:display.php');
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
                <h1 class = "text-white text-center">Update operation </h1>


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
