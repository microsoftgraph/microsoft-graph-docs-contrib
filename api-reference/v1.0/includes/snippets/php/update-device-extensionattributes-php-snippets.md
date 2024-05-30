---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Device;


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