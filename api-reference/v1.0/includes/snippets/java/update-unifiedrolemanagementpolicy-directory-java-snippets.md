---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicy unifiedRoleManagementPolicy = new UnifiedRoleManagementPolicy();
LinkedList<UnifiedRoleManagementPolicyRule> rulesList = new LinkedList<UnifiedRoleManagementPolicyRule>();
UnifiedRoleManagementPolicyApprovalRule rules = new UnifiedRoleManagementPolicyApprovalRule();
rules.id = "Approval_EndUser_Assignment";
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.caller = "EndUser";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target.operations = operationsList;
target.level = "Assignment";
LinkedList<String> inheritableSettingsList = new LinkedList<String>();
target.inheritableSettings = inheritableSettingsList;
LinkedList<String> enforcedSettingsList = new LinkedList<String>();
target.enforcedSettings = enforcedSettingsList;
rules.target = target;
ApprovalSettings setting = new ApprovalSettings();
setting.isApprovalRequired = false;
setting.isApprovalRequiredForExtension = false;
setting.isRequestorJustificationRequired = true;
setting.approvalMode = "SingleStage";
LinkedList<UnifiedApprovalStage> approvalStagesList = new LinkedList<UnifiedApprovalStage>();
UnifiedApprovalStage approvalStages = new UnifiedApprovalStage();
approvalStages.approvalStageTimeOutInDays = 1;
approvalStages.isApproverJustificationRequired = true;
approvalStages.escalationTimeInMinutes = 0;
approvalStages.isEscalationEnabled = false;
LinkedList<SubjectSet> primaryApproversList = new LinkedList<SubjectSet>();
approvalStages.primaryApprovers = primaryApproversList;
LinkedList<SubjectSet> escalationApproversList = new LinkedList<SubjectSet>();
approvalStages.escalationApprovers = escalationApproversList;
approvalStagesList.add(approvalStages);
setting.approvalStages = approvalStagesList;
rules.setting = setting;
rulesList.add(rules);
UnifiedRoleManagementPolicyAuthenticationContextRule rules1 = new UnifiedRoleManagementPolicyAuthenticationContextRule();
rules1.id = "AuthenticationContext_EndUser_Assignment";
rules1.isEnabled = false;
rules1.claimValue = "";
UnifiedRoleManagementPolicyRuleTarget target1 = new UnifiedRoleManagementPolicyRuleTarget();
target1.caller = "EndUser";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList1 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList1.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target1.operations = operationsList1;
target1.level = "Assignment";
LinkedList<String> inheritableSettingsList1 = new LinkedList<String>();
target1.inheritableSettings = inheritableSettingsList1;
LinkedList<String> enforcedSettingsList1 = new LinkedList<String>();
target1.enforcedSettings = enforcedSettingsList1;
rules1.target = target1;
rulesList.add(rules1);
UnifiedRoleManagementPolicyEnablementRule rules2 = new UnifiedRoleManagementPolicyEnablementRule();
rules2.id = "Enablement_Admin_Eligibility";
LinkedList<String> enabledRulesList = new LinkedList<String>();
rules2.enabledRules = enabledRulesList;
UnifiedRoleManagementPolicyRuleTarget target2 = new UnifiedRoleManagementPolicyRuleTarget();
target2.caller = "Admin";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList2 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList2.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target2.operations = operationsList2;
target2.level = "Eligibility";
LinkedList<String> inheritableSettingsList2 = new LinkedList<String>();
target2.inheritableSettings = inheritableSettingsList2;
LinkedList<String> enforcedSettingsList2 = new LinkedList<String>();
target2.enforcedSettings = enforcedSettingsList2;
rules2.target = target2;
rulesList.add(rules2);
UnifiedRoleManagementPolicyExpirationRule rules3 = new UnifiedRoleManagementPolicyExpirationRule();
rules3.id = "Expiration_Admin_Eligibility";
rules3.isExpirationRequired = false;
rules3.maximumDuration = DatatypeFactory.newInstance().newDuration("P365D");
UnifiedRoleManagementPolicyRuleTarget target3 = new UnifiedRoleManagementPolicyRuleTarget();
target3.caller = "Admin";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList3 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList3.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target3.operations = operationsList3;
target3.level = "Eligibility";
LinkedList<String> inheritableSettingsList3 = new LinkedList<String>();
target3.inheritableSettings = inheritableSettingsList3;
LinkedList<String> enforcedSettingsList3 = new LinkedList<String>();
target3.enforcedSettings = enforcedSettingsList3;
rules3.target = target3;
rulesList.add(rules3);
UnifiedRoleManagementPolicyNotificationRule rules4 = new UnifiedRoleManagementPolicyNotificationRule();
rules4.id = "Notification_Admin_Admin_Eligibility";
rules4.notificationType = "Email";
rules4.recipientType = "Admin";
rules4.notificationLevel = "All";
rules4.isDefaultRecipientsEnabled = true;
LinkedList<String> notificationRecipientsList = new LinkedList<String>();
rules4.notificationRecipients = notificationRecipientsList;
UnifiedRoleManagementPolicyRuleTarget target4 = new UnifiedRoleManagementPolicyRuleTarget();
target4.caller = "Admin";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList4 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList4.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target4.operations = operationsList4;
target4.level = "Eligibility";
LinkedList<String> inheritableSettingsList4 = new LinkedList<String>();
target4.inheritableSettings = inheritableSettingsList4;
LinkedList<String> enforcedSettingsList4 = new LinkedList<String>();
target4.enforcedSettings = enforcedSettingsList4;
rules4.target = target4;
rulesList.add(rules4);
UnifiedRoleManagementPolicyRuleCollectionResponse unifiedRoleManagementPolicyRuleCollectionResponse = new UnifiedRoleManagementPolicyRuleCollectionResponse();
unifiedRoleManagementPolicyRuleCollectionResponse.value = rulesList;
UnifiedRoleManagementPolicyRuleCollectionPage unifiedRoleManagementPolicyRuleCollectionPage = new UnifiedRoleManagementPolicyRuleCollectionPage(unifiedRoleManagementPolicyRuleCollectionResponse, null);
unifiedRoleManagementPolicy.rules = unifiedRoleManagementPolicyRuleCollectionPage;

graphClient.policies().roleManagementPolicies("DirectoryRole_2132228a-d66e-401c-ab8a-a8ae31254a36_0f8c4bbc-4f1a-421c-b63d-a68f571b7fab")
	.buildRequest()
	.patch(unifiedRoleManagementPolicy);

```