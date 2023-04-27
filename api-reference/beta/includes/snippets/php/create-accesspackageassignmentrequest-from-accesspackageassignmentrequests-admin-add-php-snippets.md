---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType('AdminAdd');

$accessPackageAssignment = new AccessPackageAssignment();
$accessPackageAssignment->setTargetId('46184453-e63b-4f20-86c2-c557ed5d5df9');

$accessPackageAssignment->setAssignmentPolicyId('2264bf65-76ba-417b-a27d-54d291f0cbc8');

$accessPackageAssignment->setAccessPackageId('a914b616-e04e-476b-aa37-91038f0b165b');


$requestBody->setAccessPackageAssignment($accessPackageAssignment);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->post($requestBody);


```