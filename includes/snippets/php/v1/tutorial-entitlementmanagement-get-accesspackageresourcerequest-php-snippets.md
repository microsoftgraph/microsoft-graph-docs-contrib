---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminAdd'));
$additionalData = [
	'catalogId' => 'cec5d6ab-c75d-47c0-9c1c-92e89f66e384',
	'justification' => '',
	'accessPackageResource' => [
		'resourceType' => 'AadGroup',
		'originId' => 'e93e24d1-2b65-4a6c-a1dd-654a12225487',
		'originSystem' => 'AadGroup',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceRequests()->post($requestBody)->wait();

```