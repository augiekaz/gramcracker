<?php

	
	require_once($_SERVER['DOCUMENT_ROOT'].'cloud/models/main/index.php');
	


	/* debug */


	//$resp = addItemCol(array("photoName"=>"mike idea", "userId"=>"1"));

	//$resp = deleteColItem('1');

	//$resp = getColItems("1");
	//$resp = getFeatItems('kitchen');
	//print_r($resp);



	function addItemCol($itemInfo, $userId){

		if(!isset($itemInfo['photoName'])){
			$resp = array("status"=>"fail", "reason"=>"please send the photoName to add to the collection");
			return $resp;

		}

		if(!isset($itemInfo['userId'])){
			$resp = array("status"=>"fail", "reason"=>"please userId to add to the collection");
			return $resp;

		}

		rollAdd('myCollection', $itemInfo, FALSE, FALSE ,FALSE, FALSE, TRUE);

		$resp = array("status"=>"success", "reason"=>"item added");
			return $resp;



	}

	function deleteColItem($whichId){


		dbQuery("UPDATE myCollection SET removed = 'true' WHERE rId = $whichId");
		$resp = array("status"=>"success", "reason"=>"item was removed from your collection");
			return $resp;


	}

	function getColItems($userId){

		$results = dbMassData("SELECT * FROM myCollection WHERE removed != 'true' AND userId = $userId ORDER BY timestamp DESC LIMIT 200");
		if($results == NULL){

			$resp = array("status"=>"failed", "reason"=>"no  items found for users' collection...");
			return $resp;
		}

		else{
			return array("status"=>"success", "data"=>$results, "reason"=>"found photos in your collection");
			return $response;
		}


	}



?>