---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Printer;
use Microsoft\Graph\Beta\Generated\Models\PrinterLocation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Printer();
$requestBody->setName('PrinterName');
$location = new PrinterLocation();
$location->setLatitude(1.1);
$location->setLongitude(2.2);
$location->setAltitudeInMeters(3);
$requestBody->setLocation($location);

$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->patch($requestBody)->wait();

```