---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleManagementPolicy();
$rulesUnifiedRoleManagementPolicyRule1 = new UnifiedRoleManagementPolicyRule();
$rulesUnifiedRoleManagementPolicyRule1->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyApprovalRule');

$rulesUnifiedRoleManagementPolicyRule1->setId('Approval_EndUser_Assignment');

$rulesUnifiedRoleManagementPolicyRule1Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule1Target->setCaller('EndUser');

$rulesUnifiedRoleManagementPolicyRule1Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule1Target->setLevel('Assignment');

$rulesUnifiedRoleManagementPolicyRule1Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule1Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule1->setTarget($rulesUnifiedRoleManagementPolicyRule1Target);
$additionalData = [
'setting' => $rulesUnifiedRoleManagementPolicyRule1 = new Setting();
$rulesUnifiedRoleManagementPolicyRule1->setIsApprovalRequired(true);

$rulesUnifiedRoleManagementPolicyRule1->setIsApprovalRequiredForExtension(false);

$rulesUnifiedRoleManagementPolicyRule1->setIsRequestorJustificationRequired(true);

$rulesUnifiedRoleManagementPolicyRule1->setApprovalMode('SingleStage');

$approvalStages1 = new ();
$approvalStages1->setApprovalStageTimeOutInDays(1);

$approvalStages1->setIsApproverJustificationRequired(true);

$approvalStages1->setEscalationTimeInMinutes(0);

$approvalStages1->setIsEscalationEnabled(false);

$primaryApprovers1 = new ();
$primaryApprovers1->set@odatatype('#microsoft.graph.singleUser');

$primaryApprovers1->setIsBackup(false);

$primaryApprovers1->setId('c277c8cb-6bb7-42e5-a17f-0add9a718151');

$primaryApprovers1->setDescription(null);


$primaryApproversArray []= $primaryApprovers1;
$approvalStages1->setPrimaryApprovers($primaryApproversArray);


$approvalStages1->setEscalationApprovers([]);


$approvalStagesArray []= $approvalStages1;
$rulesUnifiedRoleManagementPolicyRule1->setApprovalStages($approvalStagesArray);



$rulesUnifiedRoleManagementPolicyRule1->setSetting($setting);

];
$rulesUnifiedRoleManagementPolicyRule1->setAdditionalData($additionalData);



$rulesArray []= $rulesUnifiedRoleManagementPolicyRule1;
$rulesUnifiedRoleManagementPolicyRule2 = new UnifiedRoleManagementPolicyRule();
$rulesUnifiedRoleManagementPolicyRule2->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule');

$rulesUnifiedRoleManagementPolicyRule2->setId('AuthenticationContext_EndUser_Assignment');

$rulesUnifiedRoleManagementPolicyRule2Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule2Target->setCaller('EndUser');

$rulesUnifiedRoleManagementPolicyRule2Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule2Target->setLevel('Assignment');

$rulesUnifiedRoleManagementPolicyRule2Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule2Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule2->setTarget($rulesUnifiedRoleManagementPolicyRule2Target);
$additionalData = [
'isEnabled' => false,
'claimValue' => '', 
];
$rulesUnifiedRoleManagementPolicyRule2->setAdditionalData($additionalData);



$rulesArray []= $rulesUnifiedRoleManagementPolicyRule2;
$rulesUnifiedRoleManagementPolicyRule3 = new UnifiedRoleManagementPolicyRule();
$rulesUnifiedRoleManagementPolicyRule3->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyEnablementRule');

$rulesUnifiedRoleManagementPolicyRule3->setId('Enablement_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule3Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule3Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule3Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule3Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule3Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule3Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule3->setTarget($rulesUnifiedRoleManagementPolicyRule3Target);
$additionalData = [
'enabledRules' => [],
];
$rulesUnifiedRoleManagementPolicyRule3->setAdditionalData($additionalData);



$rulesArray []= $rulesUnifiedRoleManagementPolicyRule3;
$rulesUnifiedRoleManagementPolicyRule4 = new UnifiedRoleManagementPolicyRule();
$rulesUnifiedRoleManagementPolicyRule4->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');

$rulesUnifiedRoleManagementPolicyRule4->setId('Expiration_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule4Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule4Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule4Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule4Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule4Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule4Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule4->setTarget($rulesUnifiedRoleManagementPolicyRule4Target);
$additionalData = [
'isExpirationRequired' => true,
'maximumDuration' => 'P365D', 
];
$rulesUnifiedRoleManagementPolicyRule4->setAdditionalData($additionalData);



$rulesArray []= $rulesUnifiedRoleManagementPolicyRule4;
$rulesUnifiedRoleManagementPolicyRule5 = new UnifiedRoleManagementPolicyRule();
$rulesUnifiedRoleManagementPolicyRule5->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyNotificationRule');

$rulesUnifiedRoleManagementPolicyRule5->setId('Notification_Admin_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule5Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule5Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule5Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule5Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule5Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule5Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule5->setTarget($rulesUnifiedRoleManagementPolicyRule5Target);
$additionalData = [
'notificationType' => 'Email', 
'recipientType' => 'Admin', 
'notificationLevel' => 'All', 
'isDefaultRecipientsEnabled' => true,
'notificationRecipients' => [],
];
$rulesUnifiedRoleManagementPolicyRule5->setAdditionalData($additionalData);



$rulesArray []= $rulesUnifiedRoleManagementPolicyRule5;
$requestBody->setRules($rulesArray);




$result = $graphServiceClient->policies()->roleManagementPolicies()->byRoleManagementPolicieId('unifiedRoleManagementPolicy-id')->patch($requestBody);


```