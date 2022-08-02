---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AssignmentPolicie();
$additionalData = [
'id' => '87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187', 
'displayName' => 'All Users', 
'description' => 'All users can request for access to the directory.', 
'allowedTargetScope' => 'allDirectoryUsers', 
'specificAllowedTargets' => [],
'expiration' => $requestBody = new Expiration();
$	requestBody->setType('noExpiration');


$requestBody->setExpiration($expiration);

'requestorSettings' => $requestBody = new RequestorSettings();
	$requestBody->setEnableTargetsToSelfAddAccess(true);

	$requestBody->setEnableTargetsToSelfUpdateAccess(false);

	$requestBody->setEnableTargetsToSelfRemoveAccess(true);

	$requestBody->setAllowCustomAssignmentSchedule(false);

	$requestBody->setEnableOnBehalfRequestorsToAddAccess(false);

	$requestBody->setEnableOnBehalfRequestorsToUpdateAccess(false);

	$requestBody->setEnableOnBehalfRequestorsToRemoveAccess(false);

$requestBody->setOnBehalfRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);

'requestApprovalSettings' => $requestBody = new RequestApprovalSettings();
$requestBody->setIsApprovalRequiredForAdd(true);

$requestBody->setIsApprovalRequiredForUpdate(false);

$stages1 = new ();
$stages1->setDurationBeforeAutomaticDenial('P2D');

$stages1->setIsApproverJustificationRequired(false);

$stages1->setIsEscalationEnabled(false);

$stages1->setDurationBeforeEscalation('PT0S');

$primaryApprovers1 = new ();
$primaryApprovers1->set@odatatype('#microsoft.graph.requestorManager');

$primaryApprovers1->setManagerLevel(1);


$primaryApproversArray []= $primaryApprovers1;
$stages1->setPrimaryApprovers($primaryApproversArray);


$fallbackPrimaryApprovers1 = new ();
$fallbackPrimaryApprovers1->set@odatatype('#microsoft.graph.singleUser');

$fallbackPrimaryApprovers1->setUserId('e6bf4d7d-6824-4dd0-809d-5bf42d4817c2');

$fallbackPrimaryApprovers1->setDescription('user');


$fallbackPrimaryApproversArray []= $fallbackPrimaryApprovers1;
$stages1->setFallbackPrimaryApprovers($fallbackPrimaryApproversArray);


$stages1->setEscalationApprovers([]);

$stages1->setFallbackEscalationApprovers([]);


$stagesArray []= $stages1;
$requestBody->setStages($stagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);

'accessPackage' => $requestBody = new AccessPackage();
$requestBody->setId('49d2c59b-0a81-463d-a8ec-ddad3935d8a0');


$requestBody->setAccessPackage($accessPackage);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPoliciesById('accessPackageAssignmentPolicy-id')->put($requestBody);


```