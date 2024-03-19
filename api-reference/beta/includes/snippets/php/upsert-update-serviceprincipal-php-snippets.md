---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setDisplayName('My app instance');
$requestConfiguration = new ServicePrincipalsWithAppIdRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'create-if-missing',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->servicePrincipalsWithAppId('{appId}', )->patch($requestBody, $requestConfiguration)->wait();

```