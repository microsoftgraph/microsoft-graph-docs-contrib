---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;
use Microsoft\Graph\Generated\Models\EntitlementManagementSchedule;
use Microsoft\Graph\Generated\Models\AccessPackageSubject;
use Microsoft\Graph\Generated\Models\AccessPackageSubjectType;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;
use Microsoft\Graph\Generated\Models\AccessPackageAnswer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$assignment = new AccessPackageAssignment();
$assignmentSchedule = new EntitlementManagementSchedule();
$assignmentSchedule->setStartDateTime(null);
$additionalData = [
	'stopDateTime' => null,
];
$assignmentSchedule->setAdditionalData($additionalData);
$assignment->setSchedule($assignmentSchedule);
$assignmentTarget = new AccessPackageSubject();
$assignmentTarget->setDisplayName('Idris Ibrahim');
$assignmentTarget->setEmail('IdrisIbrahim@woodgrovebank.com');
$assignmentTarget->setObjectId('21aceaba-fe13-4e3b-aa8c-4c588d5e7387');
$assignmentTarget->setSubjectType(new AccessPackageSubjectType('user'));
$assignment->setTarget($assignmentTarget);
$additionalData = [
	'accessPackageId' => '5b98f958-0dea-4a5b-836e-109dccbd530c',
	'assignmentPolicyId' => 'c5f7847f-83a8-4315-a754-d94a6f39b875',
];
$assignment->setAdditionalData($additionalData);
$requestBody->setAssignment($assignment);
$requestBody->setRequestType(new AccessPackageRequestType('userAdd'));
$requestBody->setAnswers([	]);
$additionalData = [
	'justification' => 'Access for direct employee',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```