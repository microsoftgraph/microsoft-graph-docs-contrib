---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setAccessPackageId('88203d16-0e31-41d4-87b2-dd402f1435e9');

$requestBody->setDisplayName('Specific users');

$requestBody->setDescription('Specific users can request assignment');

$requestBody->setAccessReviewSettings(null);

$requestBody->setDurationInDays(30);

$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('SpecificDirectorySubjects');

$requestorSettings->setAcceptRequests(true);

$allowedRequestorsUserSet1 = new UserSet();
$allowedRequestorsUserSet1->set@odatatype('#microsoft.graph.singleUser');

$allowedRequestorsUserSet1->setIsBackup(false);

$additionalData = [
		'id' => '007d1c7e-7fa8-4e33-b678-5e437acdcddc', 
		'description' => 'Requestor1', 
];
$allowedRequestorsUserSet1->setAdditionalData($additionalData);



$allowedRequestorsArray []= $allowedRequestorsUserSet1;
$requestorSettings->setAllowedRequestors($allowedRequestorsArray);



$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$requestApprovalSettings->setIsApprovalRequired(false);

$requestApprovalSettings->setIsApprovalRequiredForExtension(false);

$requestApprovalSettings->setIsRequestorJustificationRequired(false);

$requestApprovalSettings->setApprovalMode('NoApproval');

$requestApprovalSettings->setApprovalStages([]);


$requestBody->setRequestApprovalSettings($requestApprovalSettings);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```