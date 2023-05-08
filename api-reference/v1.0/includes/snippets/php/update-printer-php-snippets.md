---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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




$result = $graphServiceClient->print()->printersById('printer-id')->patch($requestBody);


```