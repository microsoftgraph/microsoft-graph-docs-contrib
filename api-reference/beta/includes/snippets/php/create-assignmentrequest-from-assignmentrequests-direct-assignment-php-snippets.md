---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;
use Microsoft\Graph\Generated\Models\AccessPackageSubject;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType('AdminAdd');
$accessPackageAssignment = new AccessPackageAssignment();
$accessPackageAssignmentTarget = new AccessPackageSubject();
$accessPackageAssignmentTarget->setEmail('user@contoso.com');
$accessPackageAssignment->setTarget($accessPackageAssignmentTarget);
$accessPackageAssignment->setAssignmentPolicyId('2264bf65-76ba-417b-a27d-54d291f0cbc8');
$accessPackageAssignment->setAccessPackageId('a914b616-e04e-476b-aa37-91038f0b165b');
$requestBody->setAccessPackageAssignment($accessPackageAssignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```