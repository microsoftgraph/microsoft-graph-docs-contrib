---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('useradd'));

$assignment = new AccessPackageAssignment();
$additionalData = [
		'accessPackageId' => 'd7be3253-b9c6-4fab-adef-30d30de8da2b', 
];
$assignment->setAdditionalData($additionalData);



$requestBody->setAssignment($assignment);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody);


```