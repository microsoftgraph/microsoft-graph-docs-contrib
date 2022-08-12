---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicie();
$additionalData = [
'id' => '4540a08f-8ab5-43f6-a923-015275799197', 
'displayName' => 'policy with custom access package workflow extension', 
'description' => 'Run specified custom access package workflow extension at different stages.', 
'accessPackageId' => 'ba5807c7-2aa9-4c8a-907e-4a17ee587500', 
'expiration' => $requestBody = new Expiration();
$		requestBody->setType('afterDuration');

$		requestBody->setDuration('P365D');


$requestBody->setExpiration($expiration);

'requestApprovalSettings' => 		null,
'requestorSettings' => $requestBody = new RequestorSettings();
		$requestBody->setAcceptRequests(true);

$		requestBody->setScopeType('AllExistingDirectorySubjects');

$requestBody->setAllowedRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);

'accessReviewSettings' => 	null,
'customExtensionHandlers' => [],
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPoliciesById('accessPackageAssignmentPolicy-id')->put($requestBody);


```