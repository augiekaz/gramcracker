<?php

//$food = getFoodPics(); // test
//print_r($food); // test
function getFoodPics(){
	$resp = file_get_contents("https://api.instagram.com/v1/tags/foodporn/media/recent?access_token=255280591.1fb234f.1cc9c704e9ba497180c62367a55964d8");
	$resp = json_decode($resp,false);
	return($resp);
}

// extract($_REQUEST);
// if(!isset($pages)){

// 	$pages=3;
// }
// else{
// 	$pages= intval($pages);
// }

// $resp = getAllInsta($pages);
// echo(json_encode($resp));

// function getAllInsta($pages){

// 	$maxId="";
// 	$finalResp = array();
// 	for($i=0; $i<$pages; $i++){
// 		if($maxId==""){
// 			$raw = file_get_contents('https://api.instagram.com/v1/users/1019588938/media/recent/?access_token=251365880.1fb234f.5c37ed802ae647aaa5b8042786152cac');

// 		}
// 		else{

// 			$raw = file_get_contents('https://api.instagram.com/v1/users/1019588938/media/recent/?access_token=251365880.1fb234f.5c37ed802ae647aaa5b8042786152cac&max_id='.$maxId);

// 		}
		
// 		$resp = json_decode($raw, true);
// 		$resp = $resp['data'];
// 		$count = (count($resp)-1);
		
// 		//echo($maxId);

// 		$finalResp = array_merge($finalResp, $resp);
// 		$maxId = $resp[$count]['id'];

// 	}
	




// 	return $finalResp;
// }


?>