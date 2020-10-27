<html>
<head>   
<link href="StyleCalendrier.css" type="text/css" rel="stylesheet" />
</head>
<body>
<?php
include 'CreationCalendrier.classes.php';
$modif = false; 


$contenuTop ='<input type="checkbox" id="cb-Modif" name="cb-Modif" value="Modif" onchange="$modif=this.value"><label for="cb-Modif"> Modification des jours de stage </label><br>';

$calendar = new Calendar();
 
echo $contenuTop;
echo $calendar->show();
?>
</body>
</html>     