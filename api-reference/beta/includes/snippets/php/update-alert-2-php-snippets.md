---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Alert();
$requestBody->setAssignedTo('String');

$requestBody->setClosedDateTime(new DateTime('String (timestamp)'));

$requestBody->setComments(['String', ]);

$requestBody->setFeedback(new AlertFeedback('alertfeedback'));

$requestBody->setStatus(new AlertStatus('alertstatus'));

$requestBody->setTags(['String', ]);

$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('String');

$vendorInformation->setVendor('String');


$requestBody->setVendorInformation($vendorInformation);

$requestConfiguration = new AlertRequestBuilderPatchRequestConfiguration();
$headers = [
'Prefer' => 'return=representation',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->security()->alertsById('alert-id')->patch($requestBody, $requestConfiguration);


```