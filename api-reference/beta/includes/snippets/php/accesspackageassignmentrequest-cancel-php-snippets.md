---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CancelPostRequestBody();
$additionalData = [
		'id' => 'request-id', 
		'requestStatus' => 'cancelled', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequestsById('accessPackageAssignmentRequest-id')->cancel()->post($requestBody);


```