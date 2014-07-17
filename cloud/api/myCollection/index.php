<?php

	
	require_once($_SERVER['DOCUMENT_ROOT'].'cloud/models/myCollection/index.php');
	



	$inputArr = $_REQUEST;
	session_start();
	extract($_REQUEST);


	//check for required variables
	if(!isset($action)){

		$resp = array("status"=>"fail", "reason"=>"please send an action");
		echo(json_encode($resp));
		return;
	}

	if(!isset($userId)){

		$resp = array("status"=>"fail", "reason"=>"no user id");
		echo(json_encode($resp));

		return;

	}


	switch($action){


		case "add":
			$resp = addItemCol($inputArr, $userId);

			echo(json_encode($resp));
		break;


		case "remove":
			$resp =  deleteColItem($whichId);

			echo (json_encode($resp));


		break;

		case "get":
			$resp = getColItems($userId);
			echo(json_encode($resp));
		break;

		default:

			$resp = array("status"=>"fail", "reason"=>"please send a valid action");

			echo json_encode($resp);

		break;
	}



	/* debug */


	//$resp = addItemCol(array("photoName"=>"mike idea", "userId"=>"1"));

	//$resp = deleteColItem('1');

	//$resp = getColItems("1");
	//$resp = getFeatItems('kitchen');
	//print_r($resp);



?>