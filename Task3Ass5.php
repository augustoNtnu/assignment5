<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("SkierLogs.xml");
global $dbh;
$dbh = new PDO("mysql:host=localhost;dbname=task2","root");
$dbh->exec("SET CHARACTER SET utf8");

$Clubs = $xmlDoc->getElementsByTagName( "Club" );

$sql = "INSERT INTO skiing_club (ID, clubName, City, Country) VALUES (:id, :Cname, :city, :county)";
$ins = $dbh->prepare($sql);

for ($i = 0; $i < $Clubs->length; $i++) {
    echo  $Clubs->length;
    $club = $Clubs->item($i);
    $ID = $club->getAttribute("id");

    $names = $club->getElementsByTagName("Name");
    $name = $names->item(0)->nodeValue;

$cities = $club->getElementsByTagName("City");
$city = $cities->item(0)->nodeValue;

$counties = $club->getElementsByTagName("County");
$county = $counties->item(0)->nodeValue;



$ins->bindParam(":id", $ID);
$ins->bindParam(":Cname", $name);
$ins->bindParam(":city", $city);
$ins->bindParam(":county", $county);

$ins->execute();

}
$skiers = $xmlDoc->getElementsByTagName( "Skier" );
$sqlSkier = "INSERT INTO skier (userName, firstName, LastName, dateOfBirth) VALUES (:id, :fName, :lName, :DoB)";
$skIns = $dbh->prepare($sqlSkier);
for ($i = 0; $i < $skiers->length; $i++) {

    $skier = $skiers->item($i);
    $UName = $skier->getAttribute("userName");

    $Firstnames = $skier->getElementsByTagName("FirstName");
    $firstName = $Firstnames->item(0)->nodeValue;

    $lastNames = $skier->getElementsByTagName("LastName");
    $lastName = $lastNames->item(0)->nodeValue;

    $DoBs = $skier->getElementsByTagName("YearOfBirth");
    $DoB = $DoBs->item(0)->nodeValue;


    $skIns->bindParam(":id", $UName);
    $skIns->bindParam(":fName", $firstName);
    $skIns->bindParam(":lName", $lastName);
    $skIns->bindParam(":DoB", $DoB);

$skIns->execute();

}

$Clubs = $xmlDoc->getElementsByTagName( "Season" );

$sqlBelongs = "INSERT INTO belongs_to (userName, clubID, season, totalDistance) VALUES (:UserName, :ClubID, :Season, :Distance)";
$insbel = $dbh->prepare($sqlBelongs);

$belongs = $xmlDoc->getElementsByTagName( "Season" );

for ($i = 0; $i < $belongs->length; $i++) {


    $seasonEle = $belongs->item($i);
    $SeasonAtt = $seasonEle->getAttribute("fallYear");
    $insbel->bindParam(":Season", $SeasonAtt);

    $skiersEle = $seasonEle->getElementsByTagName("Skiers")->item($i);
    $skiersAtt = $skiersEle->getAttribute("clubId");
    $insbel->bindParam(":ClubID", $skiersAtt);
    for ($j = 0; $j < $skiersEle->getElementsByTagName("Skier")->length; $j++) {

        $skierElement = $skiersEle->getElementsByTagName("Skier")->item($j);

        $skierAttribute = $skierElement->getAttribute("userName");
        $insbel->bindParam(":UserName", $skierAttribute);
        $skierLog = $skierElement->getElementsByTagName("Log")->item(0);
        $Total = 0;
        for ($h = 0; $h < $skierLog->getElementsByTagName("Entry")->length; $h++) {

            $Entry = $skierLog->getElementsByTagName("Entry");

            $Distance = $Entry->item($h)->getElementsByTagName("Distance");

            $Single = $Distance->item(0)->nodeValue;
            $Total += $Single;
            echo $Total;
        }
        $insbel->bindParam(":Distance", $Total);


        $insbel->execute();
    }


}
?>