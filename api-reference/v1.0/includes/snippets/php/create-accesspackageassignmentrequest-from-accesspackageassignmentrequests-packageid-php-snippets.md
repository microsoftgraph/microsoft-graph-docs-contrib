---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('userAdd'));
$assignment = new AccessPackageAssignment();
$additionalData = [
	'accessPackageId' => 'd7be3253-b9c6-4fab-adef-30d30de8da2b',
];
$assignment->setAdditionalData($additionalData);
$requestBody->setAssignment($assignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```