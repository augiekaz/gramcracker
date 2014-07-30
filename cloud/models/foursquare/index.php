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
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];



	for($i=0; $i< count($resp); $i++){

			
			$venueId = $resp[$i]['id'];
			$placeName =$resp[$i]['name'];
			$photos = file_get_contents("https://api.foursquare.com/v2/venues/"+$venueId+"/photos?oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			echo("getting photos from = https://api.foursquare.com/v2/venues/"+$venueId+"/photos?oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			$photosArr = json_decode($photos, true);
			$photosArr= $photosArr['response']['photos']['items'];
			for($s=0; $s < count($photosArr); $s++ ){
				echo($photosArr[$s]['prefix']);
				array_push($allPhotos, array("image"=>$photosArr[$s]['prefix']. '720x720'. $photosArr[$s]['suffix'], "locationId"=>$venueId, "name"=>$placeName  ));
			}



	}
	return($allPhotos);
}

// extract($_REQUEST);

?>