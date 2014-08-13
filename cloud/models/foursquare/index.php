<?php

//$food = getFoodPics(); // test
//print_r($food); // test
function getFoodPics($lat, $lon){

	$allPhotos = array();
	if(!isset($lat)){

		$lat= 40.7;
	}
	if(!isset($lon)){

		$lon= -74;
	}



$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];

/*
	//less than mile
	$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?radius=1000&categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];

	if(count($resp) < 60){

			$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?radius=2200&categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];
	}

	if(count($resp) < 60){

			$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?radius=3200&categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];
	}

	if(count($resp) < 60){

			$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?radius=4200&categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];
	}


	if(count($resp) < 60){

			$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?radius=6200&categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
	$resp = json_decode($resp,true);
	$resp = $resp['response']['venues'];
	}

	if(count($resp) < 60){

			$resp = file_get_contents("https://api.foursquare.com/v2/venues/search?categoryId=4bf58dd8d48988d113941735,4bf58dd8d48988d111941735,4bf58dd8d48988d112941735,52e81612bcbc57f1066b79fd,4bf58dd8d48988d110941735,52e81612bcbc57f1066b7a09,52e81612bcbc57f1066b79f2,4bf58dd8d48988d145941735,4bf58dd8d48988d1c8941735,4bf58dd8d48988d14f941735,4bf58dd8d48988d14d941735,512e7cae91d4cbb4e5efe0af&ll=".$lat.",".$lon."&oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			$resp = json_decode($resp,true);
			$resp = $resp['response']['venues'];
	}


	//print_r($resp);
	for($i=0; $i< count($resp); $i++){

			//echo('hello');

			$venueId = $resp[$i]['id'];
			$placeName =$resp[$i]['name'];
			try{

				$phoneNumber = $resp[$i]['contact']['phone'];
				$link = $resp[$i]['url'];


			}

			catch(Exception $e){

				continue;
			}
			$photos = file_get_contents("https://api.foursquare.com/v2/venues/".$venueId."/photos?oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			//echo("getting photos from = https://api.foursquare.com/v2/venues/".$venueId."/photos?oauth_token=OBQ4GG4IWJFAAKFD0HWBHLYOF0P1OR2RLFTUDXBMSVPMJBAK&v=20140729");
			$photosArr = json_decode($photos, true);

			//print_r($photosArr);
			$photosArr= $photosArr['response']['photos']['items'];
			for($s=0; $s < count($photosArr); $s++ ){
				//echo($photosArr[$s]['prefix']);
				try{
					if($photosArr[$s]['source']['name']=="Instagram"){
						array_push($allPhotos, array("image"=>$photosArr[$s]['prefix']. '720x720'. $photosArr[$s]['suffix'], "locationId"=>$venueId, "name"=>$placeName, "phoneNumber"=> $phoneNumber, "link"=>$link  ));
					}
				}

				catch(Exception $e){


				}
			}



	}
	return($allPhotos);
}

// extract($_REQUEST);

?>