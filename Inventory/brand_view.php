<?php 
//brand_view.php 
header("Access-Control-Allow-Origin: *"); header("Access-Control-Allow-Methods: PUT, GET, POST"); header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept"); $servername = "localhost"; $username = "root"; $password = ""; $dbname = "myDB";
 // Create connection 
 $conn = new mysqli($servername, $username, $password, $dbname); 
// Check connection 
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); } $sql = "SELECT * FROM sah_m_brand"; $result = $conn->query($sql); $outterData = []; if ($result->num_rows > 0) { 
    // output data of each row 
    while($row = $result->fetch_assoc()) { $e = array( "errorCode"=>"0", "data"=>$row, ); array_push($outterData, $e); } } else { $e = array( "errorCode"=>"1", "data"=>"No Data found.", ); array_push($outterData, $e); } $conn->close(); echo json_encode($outterData);
    ?>