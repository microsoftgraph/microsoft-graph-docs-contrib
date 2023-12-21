---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
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