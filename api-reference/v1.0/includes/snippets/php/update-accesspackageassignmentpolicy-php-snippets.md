---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setId('87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187');

$requestBody->setDisplayName('All Users');

$requestBody->setDescription('All users can request for access to the directory.');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('allDirectoryUsers'));

$requestBody->setAutomaticRequestSettings(null);

$requestBody->setSpecificAllowedTargets([	]);

$expiration = new ExpirationPattern();
$expiration->setType(new ExpirationPatternType('noExpiration'));


$requestBody->setExpiration($expiration);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$requestorSettings->setEnableTargetsToSelfAddAccess(true);

$requestorSettings->setEnableTargetsToSelfUpdateAccess(false);

$requestorSettings->setEnableTargetsToSelfRemoveAccess(true);

$requestorSettings->setAllowCustomAssignmentSchedule(false);

$requestorSettings->setEnableOnBehalfRequestorsToAddAccess(false);

$requestorSettings->setEnableOnBehalfRequestorsToUpdateAccess(false);

$requestorSettings->setEnableOnBehalfRequestorsToRemoveAccess(false);

$requestorSettings->setOnBehalfRequestors([	]);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
$requestApprovalSettings->setIsApprovalRequiredForAdd(true);

$requestApprovalSettings->setIsApprovalRequiredForUpdate(false);

$stagesAccessPackageApprovalStage1 = new AccessPackageApprovalStage();
$stagesAccessPackageApprovalStage1->setDurationBeforeAutomaticDenial(new \DateInterval('P2D'));

$stagesAccessPackageApprovalStage1->setIsApproverJustificationRequired(false);

$stagesAccessPackageApprovalStage1->setIsEscalationEnabled(false);

$stagesAccessPackageApprovalStage1->setDurationBeforeEscalation(new \DateInterval('PT0S'));

$primaryApproversSubjectSet1 = new RequestorManager();
$primaryApproversSubjectSet1->setOdataType('#microsoft.graph.requestorManager');

$primaryApproversSubjectSet1->setManagerLevel(1);


$primaryApproversArray []= $primaryApproversSubjectSet1;
$stagesAccessPackageApprovalStage1->setPrimaryApprovers($primaryApproversArray);


$fallbackPrimaryApproversSubjectSet1 = new SingleUser();
$fallbackPrimaryApproversSubjectSet1->setOdataType('#microsoft.graph.singleUser');

$fallbackPrimaryApproversSubjectSet1->setUserId('e6bf4d7d-6824-4dd0-809d-5bf42d4817c2');

$fallbackPrimaryApproversSubjectSet1->setDescription('user');


$fallbackPrimaryApproversArray []= $fallbackPrimaryApproversSubjectSet1;
$stagesAccessPackageApprovalStage1->setFallbackPrimaryApprovers($fallbackPrimaryApproversArray);


$stagesAccessPackageApprovalStage1->setEscalationApprovers([]);

$stagesAccessPackageApprovalStage1->setFallbackEscalationApprovers([]);


$stagesArray []= $stagesAccessPackageApprovalStage1;
$requestApprovalSettings->setStages($stagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('49d2c59b-0a81-463d-a8ec-ddad3935d8a0');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->byAccessPackageAssignmentPolicyId('accessPackageAssignmentPolicy-id')->put($requestBody);


```