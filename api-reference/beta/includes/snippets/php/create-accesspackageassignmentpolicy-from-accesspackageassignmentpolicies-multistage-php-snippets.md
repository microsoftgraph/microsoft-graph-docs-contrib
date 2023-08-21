---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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

$requestorSettings->setAllowedRequestors([	]);


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

$primaryApproversUserSet1 = new GroupMembers();
$primaryApproversUserSet1->setOdataType('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$primaryApproversUserSet1->setId('string (identifier)');

$primaryApproversUserSet1->setDescription('group for users from connected organizations which have no external sponsor');


$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new ExternalSponsors();
$primaryApproversUserSet2->setOdataType('#microsoft.graph.externalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage1->setPrimaryApprovers($primaryApproversArray);


$escalationApproversUserSet1 = new SingleUser();
$escalationApproversUserSet1->setOdataType('#microsoft.graph.singleUser');

$escalationApproversUserSet1->setIsBackup(true);

$escalationApproversUserSet1->setId('string (identifier)');

$escalationApproversUserSet1->setDescription('user if the external sponsor does not respond');


$escalationApproversArray []= $escalationApproversUserSet1;
$approvalStagesApprovalStage1->setEscalationApprovers($escalationApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage1;
$approvalStagesApprovalStage2 = new ApprovalStage();
$approvalStagesApprovalStage2->setApprovalStageTimeOutInDays(14);

$approvalStagesApprovalStage2->setIsApproverJustificationRequired(true);

$approvalStagesApprovalStage2->setIsEscalationEnabled(true);

$approvalStagesApprovalStage2->setEscalationTimeInMinutes(11520);

$primaryApproversUserSet1 = new GroupMembers();
$primaryApproversUserSet1->setOdataType('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$primaryApproversUserSet1->setId('string (identifier)');

$primaryApproversUserSet1->setDescription('group for users from connected organizations which have no internal sponsor');


$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new InternalSponsors();
$primaryApproversUserSet2->setOdataType('#microsoft.graph.internalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage2->setPrimaryApprovers($primaryApproversArray);


$escalationApproversUserSet1 = new SingleUser();
$escalationApproversUserSet1->setOdataType('#microsoft.graph.singleUser');

$escalationApproversUserSet1->setIsBackup(true);

$escalationApproversUserSet1->setId('string (identifier)');

$escalationApproversUserSet1->setDescription('user if the internal sponsor does not respond');


$escalationApproversArray []= $escalationApproversUserSet1;
$approvalStagesApprovalStage2->setEscalationApprovers($escalationApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage2;
$requestApprovalSettings->setApprovalStages($approvalStagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessReviewSettings = new AssignmentReviewSettings();
$accessReviewSettings->setIsEnabled(true);

$accessReviewSettings->setRecurrenceType('quarterly');

$accessReviewSettings->setReviewerType('Self');

$accessReviewSettings->setStartDateTime(new \DateTime('2020-04-01T07:59:59.998Z'));

$accessReviewSettings->setDurationInDays(25);

$accessReviewSettings->setReviewers([]);


$requestBody->setAccessReviewSettings($accessReviewSettings);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```