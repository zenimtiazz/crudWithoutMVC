<!DOCTYPE html>
<html>
<head>
    <title> </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script></head>
<body>
    <div class = "container">
<div class = "col-lg-12"><br>
<h1 class = "text-warning text-center">Display Table Data </h1>
<br>

<table class =" table table-striped table-hover table-bordered">

<tr class = "bg-light">
<td>ID </td>
<td>Name </td>
<td>Email </td>
<td>Class ID </td>
<td>Delete</td>
<td>Update </td>

</tr>
<?php
include 'conn.php';

$q = "select * from `STUDENT`";
$query = mysqli_query($con,$q);
while ($res = mysqli_fetch_array($query))
{
?>
<tr>
<td><?php echo $res['id'];?> </td>
<td><?php echo $res['name'];?> </td>
<td><?php echo $res['email'];?> </td>
<td><?php echo $res['c_id'];?> </td>
<td><button class = "btn-danger btn"> <a href = 
"delete.php?id=<?php echo $res['id'];?>" class ="text-white">Delete </a>
</button></td>
<td><button class = "btn-primary btn"><a href = 
"update.php?id=<?php echo $res['id'];?>" class ="text-white">Update </a>
</button></td>


</tr>
<?php
}
?>
</table>
</div>
</div>
</body>
</html>