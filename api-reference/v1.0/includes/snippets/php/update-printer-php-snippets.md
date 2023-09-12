---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Printer();
$location = new PrinterLocation();
$location->setLatitude(1.1);
$location->setLongitude(2.2);
$location->setAltitudeInMeters(3);
$requestBody->setLocation($location);
$additionalData = [
	'name' => 'PrinterName',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->patch($requestBody)->wait();

```