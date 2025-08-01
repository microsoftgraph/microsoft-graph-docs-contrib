---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;
use Microsoft\Graph\Generated\Models\AccessPackageSubject;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Generated\Models\AccessPackage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminAdd'));
$assignment = new AccessPackageAssignment();
$assignmentTarget = new AccessPackageSubject();
$assignmentTarget->setEmail('user@contoso.com');
$assignment->setTarget($assignmentTarget);
$assignmentAssignmentPolicy = new AccessPackageAssignmentPolicy();
$assignmentAssignmentPolicy->setId('11114b50-0a08-4f96-83e9-1d714aa2cd79');
$assignment->setAssignmentPolicy($assignmentAssignmentPolicy);
$assignmentAccessPackage = new AccessPackage();
$assignmentAccessPackage->setId('11115C72-0612-4C43-A044-FC0A4E71A4C5');
$assignment->setAccessPackage($assignmentAccessPackage);
$requestBody->setAssignment($assignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```