<?php
header('Content-Type: text/plain');

require_once "loxberry_system.php";
require_once "../lib/alexa_env.php";

//B&B Technik OG
//Peter Bazala
//02/2017

echo("B&B Technik OG\n");

$params = $_GET;
$commandline = array( );

foreach( $params as $param => $value ) {
	echo "$param";
	$commandline .= "--$param ";
	if(isset($value)) {
		echo " --> $value";
		$commandline .= "$value ";
	}
	echo "\n";
}

echo "$commandline";

?>