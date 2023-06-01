---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setAccessPackageId('string (identifier)');

$requestBody->setDisplayName('Users from connected organizations can request');

$requestBody->setDescription('Allow users from configured connected organizations to request and be approved by their sponsors');

$requestBody->setCanExtend(false);

$requestBody->setDurationInDays(365);

$requestBody->setExpirationDateTime(null);

$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('AllExistingConnectedOrganizationSubjects');

$requestorSettings->setAcceptRequests(true);

$requestorSettings->setAllowedRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$requestApprovalSettings->setIsApprovalRequired(true);

$requestApprovalSettings->setIsApprovalRequiredForExtension(false);

$requestApprovalSettings->setIsRequestorJustificationRequired(true);

$requestApprovalSettings->setApprovalMode('Serial');

$approvalStagesApprovalStage1 = new ApprovalStage();
$approvalStagesApprovalStage1->setApprovalStageTimeOutInDays(14);

$approvalStagesApprovalStage1->setIsApproverJustificationRequired(true);

$approvalStagesApprovalStage1->setIsEscalationEnabled(true);

$approvalStagesApprovalStage1->setEscalationTimeInMinutes(11520);

$primaryApproversUserSet1 = new UserSet();
$primaryApproversUserSet1->set@odatatype('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$additionalData = [
	'id' => 'string (identifier)', 
	'description' => 'group for users from connected organizations which have no external sponsor', 
];
$primaryApproversUserSet1->setAdditionalData($additionalData);



$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new UserSet();
$primaryApproversUserSet2->set@odatatype('#microsoft.graph.externalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage1->setPrimaryApprovers($primaryApproversArray);


$escalationApproversUserSet1 = new UserSet();
$escalationApproversUserSet1->set@odatatype('#microsoft.graph.singleUser');

$escalationApproversUserSet1->setIsBackup(true);

$additionalData = [
'id' => 'string (identifier)', 
'description' => 'user if the external sponsor does not respond', 
];
$escalationApproversUserSet1->setAdditionalData($additionalData);



$escalationApproversArray []= $escalationApproversUserSet1;
$approvalStagesApprovalStage1->setEscalationApprovers($escalationApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage1;
$approvalStagesApprovalStage2 = new ApprovalStage();
$approvalStagesApprovalStage2->setApprovalStageTimeOutInDays(14);

$approvalStagesApprovalStage2->setIsApproverJustificationRequired(true);

$approvalStagesApprovalStage2->setIsEscalationEnabled(true);

$approvalStagesApprovalStage2->setEscalationTimeInMinutes(11520);

$primaryApproversUserSet1 = new UserSet();
$primaryApproversUserSet1->set@odatatype('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$additionalData = [
'id' => 'string (identifier)', 
'description' => 'group for users from connected organizations which have no internal sponsor', 
];
$primaryApproversUserSet1->setAdditionalData($additionalData);



$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new UserSet();
$primaryApproversUserSet2->set@odatatype('#microsoft.graph.internalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage2->setPrimaryApprovers($primaryApproversArray);


$escalationApproversUserSet1 = new UserSet();
$escalationApproversUserSet1->set@odatatype('#microsoft.graph.singleUser');

$escalationApproversUserSet1->setIsBackup(true);

$additionalData = [
'id' => 'string (identifier)', 
'description' => 'user if the internal sponsor does not respond', 
];
$escalationApproversUserSet1->setAdditionalData($additionalData);



$escalationApproversArray []= $escalationApproversUserSet1;
$approvalStagesApprovalStage2->setEscalationApprovers($escalationApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage2;
$requestApprovalSettings->setApprovalStages($approvalStagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessReviewSettings = new AssignmentReviewSettings();
$accessReviewSettings->setIsEnabled(true);

$accessReviewSettings->setRecurrenceType('quarterly');

$accessReviewSettings->setReviewerType('Self');

$accessReviewSettings->setStartDateTime(new DateTime('2020-04-01T07:59:59.998Z'));

$accessReviewSettings->setDurationInDays(25);

$accessReviewSettings->setReviewers([]);


$requestBody->setAccessReviewSettings($accessReviewSettings);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```