---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Extension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Extension();
$additionalData = [
	'theme' => 'light',
	'color' => 'yellow',
	'lang' => 'Swahili',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->me()->extensions()->byExtensionId('extension-id')->patch($requestBody)->wait();

```