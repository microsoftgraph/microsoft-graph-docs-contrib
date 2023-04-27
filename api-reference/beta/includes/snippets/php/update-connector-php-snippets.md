---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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


$result = $graphServiceClient->print()->connectorsById('printConnector-id')->patch($requestBody);


```