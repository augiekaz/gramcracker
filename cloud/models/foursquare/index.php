<?php

$food = getFoodPics(); // test
print_r($food); // test
function getFoodPics($lat, $lon){

	$allPhotos = array();
	if(!isset($lat)){

		$lat= 40.7;
	}
	if(!isset($lon)){

		$lon= -74;
	}
	$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?categoryId=4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,false);
	$resp = $resp['response']['venues'];

	echo('venues');

	for($i=0; $i< count($resp); $i++){

			echo("for loop");
			$venueId = $resp[$i]['id'];
			$placeName =$resp[$i]['name'];
			$photos = file_get_contents("https://api.foursquare.com/v2/venues/"+$venueId+"/photos?oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			
			$photosArr = json_decode($photos, false);
			$photosArr= $photosArr['response']['photos']['items'];
			for($s=0; $s < count($photosArr); $s++ ){
				echo("another for");
				array_push($allPhotos, array("image"=>$photosArr[$s]['prefix']. '720x720'. $photosArr[$s]['prefix'], "locationId"=>$venueId, "name"=>$placeName  );
			}



	}
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