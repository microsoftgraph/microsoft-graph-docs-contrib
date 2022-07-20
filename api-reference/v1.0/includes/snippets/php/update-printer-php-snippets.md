---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Printer();
$location = new PrinterLocation();
$location->setLatitude(latitude);

$location->setLongitude(longitude);

$location->setAltitudeInMeters(altitudeInMeters);


$requestBody->setLocation($location);
$additionalData = [
'name' => 'PrinterName', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->print()->printersById('printer-id')->patch($requestBody);


```