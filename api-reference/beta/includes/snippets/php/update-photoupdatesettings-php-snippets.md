---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PhotoUpdateSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PhotoUpdateSettings();
$requestBody->setOdataType('#microsoft.graph.photoUpdateSettings');
$requestBody->setAllowedRoles(['String', 	]);
$additionalData = [
	'source' => 'String',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->admin()->people()->photoUpdateSettings()->patch($requestBody)->wait();

```