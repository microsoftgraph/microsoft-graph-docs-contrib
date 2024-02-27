---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
	'Engineering' => [
		'@odata.type' => '#Microsoft.DirectoryServices.CustomSecurityAttributeValue',
		'numVendors@odata.type' => '#Int32',
		'numVendors' => 8,
	],
];
$customSecurityAttributes->setAdditionalData($additionalData);
$requestBody->setCustomSecurityAttributes($customSecurityAttributes);

$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody)->wait();

```