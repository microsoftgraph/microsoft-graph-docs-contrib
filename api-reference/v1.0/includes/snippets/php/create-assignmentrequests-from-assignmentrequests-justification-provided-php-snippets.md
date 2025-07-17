---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('userAdd'));
$requestBody->setJustification('Need access to New Hire access package');
$additionalData = [
	'accessPackageAssignment' => [
		'accessPackageId' => 'a914b616-e04e-476b-aa37-91038f0b165b',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```