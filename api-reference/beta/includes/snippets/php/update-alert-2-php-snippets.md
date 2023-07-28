---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setAssignedTo('String');

$requestBody->setClosedDateTime(new \DateTime('String (timestamp)'));

$requestBody->setComments(['String', 	]);

$requestBody->setFeedback(new AlertFeedback('alertFeedback'));

$requestBody->setStatus(new AlertStatus('alertStatus'));

$requestBody->setTags(['String', 	]);

$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('String');

$vendorInformation->setVendor('String');


$requestBody->setVendorInformation($vendorInformation);

$requestConfiguration = new AlertRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->security()->alerts()->byAlertId('alert-id')->patch($requestBody, $requestConfiguration);


```