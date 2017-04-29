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

$sql = "SELECT title, cover_image, name
        FROM (BLURAY Natural Join ITEM  Natural Join MEDIA Natural Join PRODUCERDIRECTOR Natural Join PERSON)
	WHERE BLURAY.bluray_id = ITEM.item_id &&
              MEDIA.media_id = ITEM.item_id &&
              MEDIA.media_id = BLURAY.bluray_id &&
              PRODUCERDIRECTOR.pd_id = person_id
        ORDER BY title ASC";
	
$result = $conn->query($sql);
echo "<div><br></div><div>";
if ($result->num_rows > 0){

  while($row = $result->fetch_assoc()){
    echo "<div style=float:left><img src =res/blurays/" . $row["cover_image"]. " style=\"width:20%\" height:\"20%\">";
    echo "<p><b>" . $row["title"]. "</b><br>" . $row["name"] . "</p><div>";
  
  }
echo "</div>";
}
else {
  echo "<p>0 results.</p>";
}
$conn->close();

?> 





























?>
