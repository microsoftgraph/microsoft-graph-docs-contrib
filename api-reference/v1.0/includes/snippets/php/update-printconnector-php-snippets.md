---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PrintConnector;
use Microsoft\Graph\Generated\Models\PrinterLocation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintConnector();
$requestBody->setDisplayName('ConnectorName');
$requestBody->setFullyQualifiedDomainName('CONNECTOR-MACHINE');
$requestBody->setOperatingSystem('Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555');
$requestBody->setAppVersion('0.19.7338.23496');
$location = new PrinterLocation();
$location->setLatitude(1.1);
$location->setLongitude(2.2);
$location->setAltitudeInMeters(3);
$requestBody->setLocation($location);

$result = $graphServiceClient->escapedPrint()->connectors()->byPrintConnectorId('printConnector-id')->patch($requestBody)->wait();

```