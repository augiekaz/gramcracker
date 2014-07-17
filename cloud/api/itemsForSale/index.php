<?php

	
	require_once($_SERVER['DOCUMENT_ROOT'].'cloud/models/itemsForSale/index.php');
	

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
			$resp = addItem($inputArr);

			echo(json_encode($resp));
		break;


		case "remove":
			$resp = deleteItem($itemId);

			echo (json_encode($resp));


		break;

		case "get":
			$resp = getItems($photoId);
			echo(json_encode($resp));
		break;

		default:

			$resp = array("status"=>"fail", "reason"=>"please send a valid action");

			echo json_encode($resp);

		break;
	}
	/* debug */


	//$resp = addItem(array("name"=>"mike idea", "brand"=>"Ralph Lauren"));

	//$resp = deleteItem('');

	//$resp = getItems("");
	//$resp = getFeatItems('kitchen');
	//print_r($resp);



?>