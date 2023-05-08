---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TimeOffReason();
$additionalData = [
		'displayName' => 'Vacation', 
		'iconType' => 'plane', 
		'isActive' => true,
];
$requestBody->setAdditionalData($additionalData);



$requestConfiguration = new TimeOffReasonRequestBuilderPutRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->teamsById('team-id')->schedule()->timeOffReasonsById('timeOffReason-id')->put($requestBody, $requestConfiguration);


```