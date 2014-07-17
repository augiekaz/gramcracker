<?php

	//include model func)
	require_once($_SERVER['DOCUMENT_ROOT'].'cloud/models/chat/index.php');
	

	extract($_REQUEST);

	if(!isset($userN)){

		$resp = array("status"=>"fail", "reason"=> "please send userN request header parameter");
		echo(json_encode($resp));
		return;
	}
	if(!isset($mes)){

		$resp = array("status"=>"fail", "reason"=> "please send message request header parameter");
		echo(json_encode($resp));
		exit;
	}

	if(!isset($action)){

		$resp = array("status"=>"fail", "reason"=> "please send action request header parameter");
		echo(json_encode($resp));
		exit;
	}

	//made it
	switch($action){

		case "addGet":
			$res= addGetChat($userN, $mes);
			echo(json_encode($res));

			
		break;

		default:

			$resp = array("status"=>"fail", "reason"=> "please send userN request header parameter");
			echo(json_encode($resp));
		return;

		break;
	}

?>