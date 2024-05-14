---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CancelPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelPostRequestBody();
$additionalData = [
	'id' => 'request-id',
	'requestStatus' => 'cancelled',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->cancel()->post($requestBody)->wait();

```