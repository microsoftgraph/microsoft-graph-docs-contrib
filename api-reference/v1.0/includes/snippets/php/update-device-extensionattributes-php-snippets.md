---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Device();
$additionalData = [
	'extensionAttributes' => [
		'extensionAttribute1' => 'BYOD-Device',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->devices()->byDeviceId('device-id')->patch($requestBody)->wait();

```