<?php
$id = $_GET['id'];
$id2 = str_replace("embed-", "", $id);
$id1 = str_replace(".html", "", $id2);
$id3 = str_replace("https://darkibox.com/", "", $id1);
$newid = str_replace($id3, "embed-" . $id3 ."", $id3);
$url = "https://darkibox.com/" . $newid . ".html";
//echo $url;
//exit;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER, false);
$res = curl_exec($ch);
curl_close($ch);
preg_match_all('/src: "(.*?)"/',$res,$match);
$finalulr = $match[1][0];
header("location: " .  $finalulr . "");
