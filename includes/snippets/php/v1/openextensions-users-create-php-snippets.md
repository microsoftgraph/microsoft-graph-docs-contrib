---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OpenTypeExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenTypeExtension();
$requestBody->setOdataType('microsoft.graph.openTypeExtension');
$requestBody->setExtensionName('com.contoso.roamingSettings');
$additionalData = [
	'theme' => 'dark',
	'color' => 'purple',
	'lang' => 'Japanese',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->me()->extensions()->post($requestBody)->wait();

```