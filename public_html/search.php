<!DOCTYPE html>
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<?php
require_once('setup.php');
// Query:
$title = $_POST['title'];
$sql = "SELECT * FROM research_papers WHERE Title LIKE $title;";
$result = $conn->query($sql);
if($result->num_rows > 0){

  ?>
  <table class="table table-striped">
    <tr>
      <th>DOI</th>
      <th>Title</th>
      <th>Publisher_ISSN</th>
      <th>Publication_Date</th>
      <th>Cited_Times</th>
    </tr>

    <?php
    while($row = $result->fetch_assoc()){
      ?>
      <tr>
        <td><?php echo $row['DOI']?></td>
        <td><?php echo $row['Title']?></td>
        <td><?php echo $row['Publisher_ISSN']?></td>
        <td><?php echo $row['Publication_Date']?></td>
        <td><?php echo $row['Cited_Times']?></td>
      </tr>

      <?php
    }
  }

else {
echo "Item not found";
}
?>

    </table>

<?php
$conn->close();
?>

</body>
</html>
