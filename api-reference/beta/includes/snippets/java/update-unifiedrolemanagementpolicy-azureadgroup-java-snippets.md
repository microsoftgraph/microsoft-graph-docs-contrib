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
LinkedList<String> operationsList = new LinkedList<String>();
operationsList.add("All");
target.operations = operationsList;
target.level = "Assignment";
LinkedList<String> inheritableSettingsList = new LinkedList<String>();
target.inheritableSettings = inheritableSettingsList;
LinkedList<String> enforcedSettingsList = new LinkedList<String>();
target.enforcedSettings = enforcedSettingsList;
rules.target = target;
ApprovalSettings setting = new ApprovalSettings();
setting.isApprovalRequired = true;
setting.isApprovalRequiredForExtension = false;
setting.isRequestorJustificationRequired = true;
setting.approvalMode = "SingleStage";
LinkedList<ApprovalStage> approvalStagesList = new LinkedList<ApprovalStage>();
ApprovalStage approvalStages = new ApprovalStage();
approvalStages.approvalStageTimeOutInDays = 1;
approvalStages.isApproverJustificationRequired = true;
approvalStages.escalationTimeInMinutes = 0;
approvalStages.isEscalationEnabled = false;
LinkedList<UserSet> primaryApproversList = new LinkedList<UserSet>();
SingleUser primaryApprovers = new SingleUser();
primaryApprovers.isBackup = false;
primaryApprovers.id = "c277c8cb-6bb7-42e5-a17f-0add9a718151";
primaryApprovers.description = null;
primaryApproversList.add(primaryApprovers);
approvalStages.primaryApprovers = primaryApproversList;
LinkedList<UserSet> escalationApproversList = new LinkedList<UserSet>();
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
LinkedList<String> operationsList1 = new LinkedList<String>();
operationsList1.add("All");
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
LinkedList<String> operationsList2 = new LinkedList<String>();
operationsList2.add("All");
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
rules3.isExpirationRequired = true;
rules3.maximumDuration = DatatypeFactory.newInstance().newDuration("P365D");
UnifiedRoleManagementPolicyRuleTarget target3 = new UnifiedRoleManagementPolicyRuleTarget();
target3.caller = "Admin";
LinkedList<String> operationsList3 = new LinkedList<String>();
operationsList3.add("All");
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
LinkedList<String> operationsList4 = new LinkedList<String>();
operationsList4.add("All");
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

graphClient.policies().roleManagementPolicies("Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369")
	.buildRequest()
	.patch(unifiedRoleManagementPolicy);

```