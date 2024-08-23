---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\ServicePrincipals_with_app_id\ServicePrincipalsWithAppIdRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\ServicePrincipal;


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