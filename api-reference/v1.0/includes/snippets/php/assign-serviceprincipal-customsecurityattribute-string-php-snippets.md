---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
	'Engineering' => [
		'@odata.type' => '#Microsoft.DirectoryServices.CustomSecurityAttributeValue',
		'projectDate' => '2022-10-01',
	],
];
$customSecurityAttributes->setAdditionalData($additionalData);
$requestBody->setCustomSecurityAttributes($customSecurityAttributes);

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody)->wait();

```