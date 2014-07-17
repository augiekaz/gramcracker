<?php

	
	require_once($_SERVER['DOCUMENT_ROOT'].'cloud/models/main/index.php');
	


	/* debug */


	//$resp = addItem(array("name"=>"mike idea", "brand"=>"Ralph Lauren"));

	//$resp = deleteItem('');

	//$resp = getItems("");
	//$resp = getFeatItems('kitchen');
	//print_r($resp);



	function addItem($itemInfo){

		if(!isset($itemInfo['name'])){
			$resp = array("status"=>"fail", "reason"=>"please send the name of the product");
			return $resp;

		}

		rollAdd('itemsForSale', $itemInfo, FALSE, FALSE ,FALSE, FALSE, TRUE);

		$resp = array("status"=>"success", "reason"=>"item added");
			return $resp;



	}

	function deleteItem($itemId){


		dbQuery("UPDATE itemsForSale SET active = 'false' WHERE itemId = '$itemId'");
		$resp = array("status"=>"success", "reason"=>"item was unlisted");
			return $resp;


	}

	function getItems($photoId){

		$results = dbMassData("SELECT * FROM itemsForSale WHERE active = 'true' AND (instagramId = '$photoId' OR saleImg1 = '$photoId' OR saleImg2 = '$photoId')");
		if($results == NULL){

			$resp = array("status"=>"failed", "reason"=>"no  items found for sale in our inventory");
			return $resp;
		}

		else{
			return array("status"=>"success", "data"=>$results, "reason"=>"found results");
			return $response;
		}


	}

	function getFeatItems($category="kitchen"){

		$results = dbMassData("SELECT * FROM itemsForSale WHERE active = 'true' AND category LIKE '%$category%' ORDER BY timeAdded DESC LIMIT 50");
		if($results == NULL){

			$resp = array("status"=>"failed", "reason"=>"no  items found for sale in our inventory from that category");
			return $resp;
		}

		else{
			return array("status"=>"success", "data"=>$results, "reason"=>"found results");
			return $response;
		}
	}
	



?>