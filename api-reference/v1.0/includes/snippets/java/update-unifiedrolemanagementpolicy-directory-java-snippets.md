---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementPolicy unifiedRoleManagementPolicy = new UnifiedRoleManagementPolicy();
LinkedList<UnifiedRoleManagementPolicyRule> rules = new LinkedList<UnifiedRoleManagementPolicyRule>();
UnifiedRoleManagementPolicyApprovalRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyApprovalRule();
unifiedRoleManagementPolicyRule.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyApprovalRule");
unifiedRoleManagementPolicyRule.setId("Approval_EndUser_Assignment");
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.setCaller("EndUser");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target.setOperations(operations);
target.setLevel("Assignment");
LinkedList<String> inheritableSettings = new LinkedList<String>();
target.setInheritableSettings(inheritableSettings);
LinkedList<String> enforcedSettings = new LinkedList<String>();
target.setEnforcedSettings(enforcedSettings);
unifiedRoleManagementPolicyRule.setTarget(target);
ApprovalSettings setting = new ApprovalSettings();
setting.setIsApprovalRequired(false);
setting.setIsApprovalRequiredForExtension(false);
setting.setIsRequestorJustificationRequired(true);
setting.setApprovalMode("SingleStage");
LinkedList<UnifiedApprovalStage> approvalStages = new LinkedList<UnifiedApprovalStage>();
UnifiedApprovalStage unifiedApprovalStage = new UnifiedApprovalStage();
unifiedApprovalStage.setApprovalStageTimeOutInDays(1);
unifiedApprovalStage.setIsApproverJustificationRequired(true);
unifiedApprovalStage.setEscalationTimeInMinutes(0);
unifiedApprovalStage.setIsEscalationEnabled(false);
LinkedList<SubjectSet> primaryApprovers = new LinkedList<SubjectSet>();
unifiedApprovalStage.setPrimaryApprovers(primaryApprovers);
LinkedList<SubjectSet> escalationApprovers = new LinkedList<SubjectSet>();
unifiedApprovalStage.setEscalationApprovers(escalationApprovers);
approvalStages.add(unifiedApprovalStage);
setting.setApprovalStages(approvalStages);
unifiedRoleManagementPolicyRule.setSetting(setting);
rules.add(unifiedRoleManagementPolicyRule);
UnifiedRoleManagementPolicyAuthenticationContextRule unifiedRoleManagementPolicyRule1 = new UnifiedRoleManagementPolicyAuthenticationContextRule();
unifiedRoleManagementPolicyRule1.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule");
unifiedRoleManagementPolicyRule1.setId("AuthenticationContext_EndUser_Assignment");
unifiedRoleManagementPolicyRule1.setIsEnabled(false);
unifiedRoleManagementPolicyRule1.setClaimValue("");
UnifiedRoleManagementPolicyRuleTarget target1 = new UnifiedRoleManagementPolicyRuleTarget();
target1.setCaller("EndUser");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations1 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations1.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target1.setOperations(operations1);
target1.setLevel("Assignment");
LinkedList<String> inheritableSettings1 = new LinkedList<String>();
target1.setInheritableSettings(inheritableSettings1);
LinkedList<String> enforcedSettings1 = new LinkedList<String>();
target1.setEnforcedSettings(enforcedSettings1);
unifiedRoleManagementPolicyRule1.setTarget(target1);
rules.add(unifiedRoleManagementPolicyRule1);
UnifiedRoleManagementPolicyEnablementRule unifiedRoleManagementPolicyRule2 = new UnifiedRoleManagementPolicyEnablementRule();
unifiedRoleManagementPolicyRule2.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyEnablementRule");
unifiedRoleManagementPolicyRule2.setId("Enablement_Admin_Eligibility");
LinkedList<String> enabledRules = new LinkedList<String>();
unifiedRoleManagementPolicyRule2.setEnabledRules(enabledRules);
UnifiedRoleManagementPolicyRuleTarget target2 = new UnifiedRoleManagementPolicyRuleTarget();
target2.setCaller("Admin");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations2 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations2.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target2.setOperations(operations2);
target2.setLevel("Eligibility");
LinkedList<String> inheritableSettings2 = new LinkedList<String>();
target2.setInheritableSettings(inheritableSettings2);
LinkedList<String> enforcedSettings2 = new LinkedList<String>();
target2.setEnforcedSettings(enforcedSettings2);
unifiedRoleManagementPolicyRule2.setTarget(target2);
rules.add(unifiedRoleManagementPolicyRule2);
UnifiedRoleManagementPolicyExpirationRule unifiedRoleManagementPolicyRule3 = new UnifiedRoleManagementPolicyExpirationRule();
unifiedRoleManagementPolicyRule3.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyExpirationRule");
unifiedRoleManagementPolicyRule3.setId("Expiration_Admin_Eligibility");
unifiedRoleManagementPolicyRule3.setIsExpirationRequired(false);
PeriodAndDuration maximumDuration = PeriodAndDuration.ofDuration(Duration.parse("P365D"));
unifiedRoleManagementPolicyRule3.setMaximumDuration(maximumDuration);
UnifiedRoleManagementPolicyRuleTarget target3 = new UnifiedRoleManagementPolicyRuleTarget();
target3.setCaller("Admin");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations3 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations3.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target3.setOperations(operations3);
target3.setLevel("Eligibility");
LinkedList<String> inheritableSettings3 = new LinkedList<String>();
target3.setInheritableSettings(inheritableSettings3);
LinkedList<String> enforcedSettings3 = new LinkedList<String>();
target3.setEnforcedSettings(enforcedSettings3);
unifiedRoleManagementPolicyRule3.setTarget(target3);
rules.add(unifiedRoleManagementPolicyRule3);
UnifiedRoleManagementPolicyNotificationRule unifiedRoleManagementPolicyRule4 = new UnifiedRoleManagementPolicyNotificationRule();
unifiedRoleManagementPolicyRule4.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyNotificationRule");
unifiedRoleManagementPolicyRule4.setId("Notification_Admin_Admin_Eligibility");
unifiedRoleManagementPolicyRule4.setNotificationType("Email");
unifiedRoleManagementPolicyRule4.setRecipientType("Admin");
unifiedRoleManagementPolicyRule4.setNotificationLevel("All");
unifiedRoleManagementPolicyRule4.setIsDefaultRecipientsEnabled(true);
LinkedList<String> notificationRecipients = new LinkedList<String>();
unifiedRoleManagementPolicyRule4.setNotificationRecipients(notificationRecipients);
UnifiedRoleManagementPolicyRuleTarget target4 = new UnifiedRoleManagementPolicyRuleTarget();
target4.setCaller("Admin");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations4 = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations4.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target4.setOperations(operations4);
target4.setLevel("Eligibility");
LinkedList<String> inheritableSettings4 = new LinkedList<String>();
target4.setInheritableSettings(inheritableSettings4);
LinkedList<String> enforcedSettings4 = new LinkedList<String>();
target4.setEnforcedSettings(enforcedSettings4);
unifiedRoleManagementPolicyRule4.setTarget(target4);
rules.add(unifiedRoleManagementPolicyRule4);
unifiedRoleManagementPolicy.setRules(rules);
UnifiedRoleManagementPolicy result = graphClient.policies().roleManagementPolicies().byUnifiedRoleManagementPolicyId("{unifiedRoleManagementPolicy-id}").patch(unifiedRoleManagementPolicy);


```