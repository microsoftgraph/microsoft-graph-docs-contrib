---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleManagementPolicy();
$rulesUnifiedRoleManagementPolicyRule1 = new UnifiedRoleManagementPolicyApprovalRule();
$rulesUnifiedRoleManagementPolicyRule1->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyApprovalRule');

$rulesUnifiedRoleManagementPolicyRule1->setId('Approval_EndUser_Assignment');

$rulesUnifiedRoleManagementPolicyRule1Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule1Target->setCaller('EndUser');

$rulesUnifiedRoleManagementPolicyRule1Target->setOperations(['All', 	]);

$rulesUnifiedRoleManagementPolicyRule1Target->setLevel('Assignment');

$rulesUnifiedRoleManagementPolicyRule1Target->setInheritableSettings([	]);

$rulesUnifiedRoleManagementPolicyRule1Target->setEnforcedSettings([	]);


$rulesUnifiedRoleManagementPolicyRule1->setTarget($rulesUnifiedRoleManagementPolicyRule1Target);
$rulesUnifiedRoleManagementPolicyRule1Setting = new ApprovalSettings();
$rulesUnifiedRoleManagementPolicyRule1Setting->setIsApprovalRequired(false);

$rulesUnifiedRoleManagementPolicyRule1Setting->setIsApprovalRequiredForExtension(false);

$rulesUnifiedRoleManagementPolicyRule1Setting->setIsRequestorJustificationRequired(true);

$rulesUnifiedRoleManagementPolicyRule1Setting->setApprovalMode('SingleStage');

$approvalStagesApprovalStage1 = new ApprovalStage();
$approvalStagesApprovalStage1->setApprovalStageTimeOutInDays(1);

$approvalStagesApprovalStage1->setIsApproverJustificationRequired(true);

$approvalStagesApprovalStage1->setEscalationTimeInMinutes(0);

$approvalStagesApprovalStage1->setIsEscalationEnabled(false);

$approvalStagesApprovalStage1->setPrimaryApprovers([	]);

$approvalStagesApprovalStage1->setEscalationApprovers([	]);


$approvalStagesArray []= $approvalStagesApprovalStage1;
$rulesUnifiedRoleManagementPolicyRule1Setting->setApprovalStages($approvalStagesArray);



$rulesUnifiedRoleManagementPolicyRule1->setSetting($rulesUnifiedRoleManagementPolicyRule1Setting);

$rulesArray []= $rulesUnifiedRoleManagementPolicyRule1;
$rulesUnifiedRoleManagementPolicyRule2 = new UnifiedRoleManagementPolicyAuthenticationContextRule();
$rulesUnifiedRoleManagementPolicyRule2->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule');

$rulesUnifiedRoleManagementPolicyRule2->setId('AuthenticationContext_EndUser_Assignment');

$rulesUnifiedRoleManagementPolicyRule2->setIsEnabled(false);

$rulesUnifiedRoleManagementPolicyRule2->setClaimValue('');

$rulesUnifiedRoleManagementPolicyRule2Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule2Target->setCaller('EndUser');

$rulesUnifiedRoleManagementPolicyRule2Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule2Target->setLevel('Assignment');

$rulesUnifiedRoleManagementPolicyRule2Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule2Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule2->setTarget($rulesUnifiedRoleManagementPolicyRule2Target);

$rulesArray []= $rulesUnifiedRoleManagementPolicyRule2;
$rulesUnifiedRoleManagementPolicyRule3 = new UnifiedRoleManagementPolicyEnablementRule();
$rulesUnifiedRoleManagementPolicyRule3->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyEnablementRule');

$rulesUnifiedRoleManagementPolicyRule3->setId('Enablement_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule3->setEnabledRules([]);

$rulesUnifiedRoleManagementPolicyRule3Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule3Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule3Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule3Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule3Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule3Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule3->setTarget($rulesUnifiedRoleManagementPolicyRule3Target);

$rulesArray []= $rulesUnifiedRoleManagementPolicyRule3;
$rulesUnifiedRoleManagementPolicyRule4 = new UnifiedRoleManagementPolicyExpirationRule();
$rulesUnifiedRoleManagementPolicyRule4->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');

$rulesUnifiedRoleManagementPolicyRule4->setId('Expiration_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule4->setIsExpirationRequired(false);

$rulesUnifiedRoleManagementPolicyRule4->setMaximumDuration(new \DateInterval('P365D'));

$rulesUnifiedRoleManagementPolicyRule4Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule4Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule4Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule4Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule4Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule4Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule4->setTarget($rulesUnifiedRoleManagementPolicyRule4Target);

$rulesArray []= $rulesUnifiedRoleManagementPolicyRule4;
$rulesUnifiedRoleManagementPolicyRule5 = new UnifiedRoleManagementPolicyNotificationRule();
$rulesUnifiedRoleManagementPolicyRule5->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyNotificationRule');

$rulesUnifiedRoleManagementPolicyRule5->setId('Notification_Admin_Admin_Eligibility');

$rulesUnifiedRoleManagementPolicyRule5->setNotificationType('Email');

$rulesUnifiedRoleManagementPolicyRule5->setRecipientType('Admin');

$rulesUnifiedRoleManagementPolicyRule5->setNotificationLevel('All');

$rulesUnifiedRoleManagementPolicyRule5->setIsDefaultRecipientsEnabled(true);

$rulesUnifiedRoleManagementPolicyRule5->setNotificationRecipients([]);

$rulesUnifiedRoleManagementPolicyRule5Target = new UnifiedRoleManagementPolicyRuleTarget();
$rulesUnifiedRoleManagementPolicyRule5Target->setCaller('Admin');

$rulesUnifiedRoleManagementPolicyRule5Target->setOperations(['All', ]);

$rulesUnifiedRoleManagementPolicyRule5Target->setLevel('Eligibility');

$rulesUnifiedRoleManagementPolicyRule5Target->setInheritableSettings([]);

$rulesUnifiedRoleManagementPolicyRule5Target->setEnforcedSettings([]);


$rulesUnifiedRoleManagementPolicyRule5->setTarget($rulesUnifiedRoleManagementPolicyRule5Target);

$rulesArray []= $rulesUnifiedRoleManagementPolicyRule5;
$requestBody->setRules($rulesArray);




$result = $graphServiceClient->policies()->roleManagementPolicies()->byUnifiedRoleManagementPolicyId('unifiedRoleManagementPolicy-id')->patch($requestBody);


```