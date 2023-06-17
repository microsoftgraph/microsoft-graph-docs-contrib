---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType('UserAdd');

$accessPackageAssignment = new AccessPackageAssignment();
$accessPackageAssignment->setTargetId('007d1c7e-7fa8-4e33-b678-5e437acdcddc');

$accessPackageAssignment->setAssignmentPolicyId('db440482-1210-4a60-9b55-3ac7a72f63ba');

$accessPackageAssignment->setAccessPackageId('88203d16-0e31-41d4-87b2-dd402f1435e9');


$requestBody->setAccessPackageAssignment($accessPackageAssignment);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->post($requestBody);


```