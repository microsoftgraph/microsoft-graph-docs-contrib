---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FileStorageContainer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainer();
$requestBody->setDisplayName('My Application Storage Container');
$requestBody->setDescription('Description of My Application Storage Container');
$requestBody->setContainerTypeId('91710488-5756-407f-9046-fbe5f0b4de73');
$additionalData = [
	'settings' => [
		'isOcrEnabled' => true,
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->storage()->fileStorage()->containers()->post($requestBody)->wait();

```