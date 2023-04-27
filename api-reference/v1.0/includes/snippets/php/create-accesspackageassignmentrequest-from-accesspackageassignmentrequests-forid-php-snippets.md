---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminremove'));

$assignment = new AccessPackageAssignment();
$assignment->setId('a6bb6942-3ae1-4259-9908-0133aaee9377');


$requestBody->setAssignment($assignment);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody);


```