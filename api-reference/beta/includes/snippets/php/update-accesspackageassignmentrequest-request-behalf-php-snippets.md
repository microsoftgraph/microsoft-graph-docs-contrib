---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAnswer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setJustification('Access for direct employee');
$requestBody->setRequestType('UserAdd');
$requestBody->setAnswers([	]);
$additionalData = [
	'assignment' => [
		'accessPackageId' => '5b98f958-0dea-4a5b-836e-109dccbd530c',
		'schedule' => [
			'startDateTime' => null,
			'stopDateTime' => null,
		],
		'assignmentPolicyId' => 'c5f7847f-83a8-4315-a754-d94a6f39b875',
		'target' => [
			'displayName' => 'Idris Ibrahim',
			'email' => 'IdrisIbrahim@woodgrovebank.com',
			'objectId' => '21aceaba-fe13-4e3b-aa8c-4c588d5e7387',
			'subjectType' => 'user',
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```