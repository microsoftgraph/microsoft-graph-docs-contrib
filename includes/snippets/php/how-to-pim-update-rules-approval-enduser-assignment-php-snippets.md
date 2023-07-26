---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleManagementPolicyApprovalRule();
$requestBody->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyApprovalRule');

$requestBody->setId('Approval_EndUser_Assignment');

$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->setOdataType('microsoft.graph.unifiedRoleManagementPolicyRuleTarget');

$target->setCaller('EndUser');

$target->setOperations([new UnifiedRoleManagementPolicyRuleTargetOperations('all'),	]);

$target->setLevel('Assignment');

$target->setInheritableSettings([	]);

$target->setEnforcedSettings([	]);


$requestBody->setTarget($target);
$setting = new ApprovalSettings();
$setting->setOdataType('microsoft.graph.approvalSettings');

$setting->setIsApprovalRequired(true);

$setting->setIsApprovalRequiredForExtension(false);

$setting->setIsRequestorJustificationRequired(true);

$setting->setApprovalMode('SingleStage');

$approvalStagesUnifiedApprovalStage1 = new UnifiedApprovalStage();
$approvalStagesUnifiedApprovalStage1->setOdataType('microsoft.graph.unifiedApprovalStage');

$approvalStagesUnifiedApprovalStage1->setApprovalStageTimeOutInDays(1);

$approvalStagesUnifiedApprovalStage1->setIsApproverJustificationRequired(true);

$approvalStagesUnifiedApprovalStage1->setEscalationTimeInMinutes(0);

$primaryApproversSubjectSet1 = new SingleUser();
$primaryApproversSubjectSet1->setOdataType('#microsoft.graph.singleUser');

$primaryApproversSubjectSet1->setUserId('10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6');


$primaryApproversArray []= $primaryApproversSubjectSet1;
$primaryApproversSubjectSet2 = new GroupMembers();
$primaryApproversSubjectSet2->setOdataType('#microsoft.graph.groupMembers');

$primaryApproversSubjectSet2->setGroupId('14f2746d-7d6f-4ac6-acd8-8cac318b041b');


$primaryApproversArray []= $primaryApproversSubjectSet2;
$approvalStagesUnifiedApprovalStage1->setPrimaryApprovers($primaryApproversArray);


$approvalStagesUnifiedApprovalStage1->setIsEscalationEnabled(false);

$approvalStagesUnifiedApprovalStage1->setEscalationApprovers([]);


$approvalStagesArray []= $approvalStagesUnifiedApprovalStage1;
$setting->setApprovalStages($approvalStagesArray);



$requestBody->setSetting($setting);


$result = $graphServiceClient->policies()->roleManagementPolicies()->byUnifiedRoleManagementPolicyId('unifiedRoleManagementPolicy-id')->rules()->byUnifiedRoleManagementPolicyRuleId('unifiedRoleManagementPolicyRule-id')->patch($requestBody);


```