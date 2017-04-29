<?php
$servername = "localhost";
$username = "guest";
$password = "guest123";
$dbname = "Library_Catalog";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT item_id, title FROM ITEM";
$result = $conn->query($sql);

if ($result->num_rows > 0){
  while($row = $result->fetch_assoc()){
    echo "<div><p> item_id: " . $row["item_id"]. " - Title: " . $row["title"] . "</p><br></div>";
  
  }
}
else {
  echo "<p>0 results.</p>";
}
$conn->close();
?> 
