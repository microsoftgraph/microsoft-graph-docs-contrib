---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RoomList();
$requestBody->setOdataType('microsoft.graph.roomList');
$requestBody->setDisplayName('Building 1');
$requestBody->setPhone('555-555-0100');
$address = new PhysicalAddress();
$address->setStreet('4567 Main Street');
$address->setCity('Buffalo');
$address->setState('NY');
$address->setPostalCode('98052');
$address->setCountryOrRegion('USA');
$requestBody->setAddress($address);
$geoCoordinates = new OutlookGeoCoordinates();
$geoCoordinates->setAltitude(null);
$geoCoordinates->setLatitude(47);
$geoCoordinates->setLongitude(-122);
$geoCoordinates->setAccuracy(null);
$geoCoordinates->setAltitudeAccuracy(null);
$requestBody->setGeoCoordinates($geoCoordinates);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```