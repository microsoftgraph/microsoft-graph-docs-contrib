---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminRemove'));
$assignment = new AccessPackageAssignment();
$assignment->setId('a6bb6942-3ae1-4259-9908-0133aaee9377');
$requestBody->setAssignment($assignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```