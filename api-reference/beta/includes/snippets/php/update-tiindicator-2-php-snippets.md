---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TiIndicator();
$requestBody->setAdditionalInformation('additionalInformation-after-update');
$requestBody->setConfidence(42);
$requestBody->setDescription('description-after-update');
$requestConfiguration = new TiIndicatorItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->security()->tiIndicators()->byTiIndicatorId('tiIndicator-id')->patch($requestBody, $requestConfiguration)->wait();

```