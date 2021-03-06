<?php
	require_once("./lib/Commandline.php");
	require_once('./lib/RpcClient.class.inc');

 	$args = CommandLine::parseArgs($_SERVER['argv']);

	if (! (isset($args['username']) && (isset($args['password'])))){
		print "You have to give: \n--username=<your-username> \n--password=<your-password>\n";
	} else {
		try{
			$client = new RpcClient;
			$userid = $client->performLogin($args['username'], $args['password']);
			$registry = $client->getRegistry($userid);

			var_dump($registry);

		} catch(Exception $e){
			echo 'Caught exception: ',  $e->getMessage(), "\n";
		}
	} 
?>
