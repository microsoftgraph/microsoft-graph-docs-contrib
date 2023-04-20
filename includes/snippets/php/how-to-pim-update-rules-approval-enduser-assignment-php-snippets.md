---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleManagementPolicyRule();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyApprovalRule');

$requestBody->setId('Approval_EndUser_Assignment');

$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->set@odatatype('microsoft.graph.unifiedRoleManagementPolicyRuleTarget');

$target->setCaller('EndUser');

$target->setOperations([$target->setUnifiedRoleManagementPolicyRuleTargetOperations(new UnifiedRoleManagementPolicyRuleTargetOperations('all'));
]);

$target->setLevel('Assignment');

$target->setInheritableSettings([]);

$target->setEnforcedSettings([]);


$requestBody->setTarget($target);
$additionalData = [
'setting' => $requestBody = new Setting();
$requestBody->set@odatatype('microsoft.graph.approvalSettings');

$requestBody->setIsApprovalRequired(true);

$requestBody->setIsApprovalRequiredForExtension(false);

$requestBody->setIsRequestorJustificationRequired(true);

$requestBody->setApprovalMode('SingleStage');

$approvalStages1 = new ();
$approvalStages1->set@odatatype('microsoft.graph.unifiedApprovalStage');

$approvalStages1->setApprovalStageTimeOutInDays(1);

$approvalStages1->setIsApproverJustificationRequired(true);

$approvalStages1->setEscalationTimeInMinutes(0);

$primaryApprovers1 = new ();
$primaryApprovers1->set@odatatype('#microsoft.graph.singleUser');

$primaryApprovers1->setUserId('10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6');


$primaryApproversArray []= $primaryApprovers1;
$primaryApprovers2 = new ();
$primaryApprovers2->set@odatatype('#microsoft.graph.groupMembers');

$primaryApprovers2->setGroupId('14f2746d-7d6f-4ac6-acd8-8cac318b041b');


$primaryApproversArray []= $primaryApprovers2;
$approvalStages1->setPrimaryApprovers($primaryApproversArray);


$approvalStages1->setIsEscalationEnabled(false);

$approvalStages1->setEscalationApprovers([]);


$approvalStagesArray []= $approvalStages1;
$requestBody->setApprovalStages($approvalStagesArray);



$requestBody->setSetting($setting);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->policies()->roleManagementPoliciesById('unifiedRoleManagementPolicy-id')->rulesById('unifiedRoleManagementPolicyRule-id')->patch($requestBody);


```