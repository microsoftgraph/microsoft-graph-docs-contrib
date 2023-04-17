---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OpenShiftChangeRequest();
$requestBody->setSenderMessage('Can I take this shift?');

$requestBody->setOpenShiftId('577b75d2-a927-48c0-a5d1-dc984894e7b8');


$requestConfiguration = new OpenShiftChangeRequestsRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->teamsById('team-id')->schedule()->openShiftChangeRequests()->post($requestBody, $requestConfiguration);


```