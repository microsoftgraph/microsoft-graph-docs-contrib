---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('userAdd'));
$additionalData = [
	'accessPackageAssignment' => [
		'accessPackageId' => 'a914b616-e04e-476b-aa37-91038f0b165b',
	],
	'justification' => 'Need access to New Hire access package',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```