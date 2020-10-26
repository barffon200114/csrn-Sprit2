<html>
<head>   
<link href="StyleCalendrier.css" type="text/css" rel="stylesheet" />
</head>
<body>
<?php
include 'CreationCalendrier.classes.php';
 
$calendar = new Calendar();
 
echo $calendar->show();
?>
</body>
</html>     