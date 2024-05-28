---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType('AdminRemove');
$accessPackageAssignment = new AccessPackageAssignment();
$accessPackageAssignment->setId('a6bb6942-3ae1-4259-9908-0133aaee9377');
$requestBody->setAccessPackageAssignment($accessPackageAssignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->post($requestBody)->wait();

```