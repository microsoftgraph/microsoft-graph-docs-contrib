---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementPolicyApprovalRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyApprovalRule();
unifiedRoleManagementPolicyRule.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyApprovalRule");
unifiedRoleManagementPolicyRule.setId("Approval_EndUser_Assignment");
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.setOdataType("microsoft.graph.unifiedRoleManagementPolicyRuleTarget");
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
setting.setOdataType("microsoft.graph.approvalSettings");
setting.setIsApprovalRequired(true);
setting.setIsApprovalRequiredForExtension(false);
setting.setIsRequestorJustificationRequired(true);
setting.setApprovalMode("SingleStage");
LinkedList<UnifiedApprovalStage> approvalStages = new LinkedList<UnifiedApprovalStage>();
UnifiedApprovalStage unifiedApprovalStage = new UnifiedApprovalStage();
unifiedApprovalStage.setOdataType("microsoft.graph.unifiedApprovalStage");
unifiedApprovalStage.setApprovalStageTimeOutInDays(1);
unifiedApprovalStage.setIsApproverJustificationRequired(true);
unifiedApprovalStage.setEscalationTimeInMinutes(0);
LinkedList<SubjectSet> primaryApprovers = new LinkedList<SubjectSet>();
SingleUser subjectSet = new SingleUser();
subjectSet.setOdataType("#microsoft.graph.singleUser");
subjectSet.setUserId("10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6");
primaryApprovers.add(subjectSet);
GroupMembers subjectSet1 = new GroupMembers();
subjectSet1.setOdataType("#microsoft.graph.groupMembers");
subjectSet1.setGroupId("14f2746d-7d6f-4ac6-acd8-8cac318b041b");
primaryApprovers.add(subjectSet1);
unifiedApprovalStage.setPrimaryApprovers(primaryApprovers);
unifiedApprovalStage.setIsEscalationEnabled(false);
LinkedList<SubjectSet> escalationApprovers = new LinkedList<SubjectSet>();
unifiedApprovalStage.setEscalationApprovers(escalationApprovers);
approvalStages.add(unifiedApprovalStage);
setting.setApprovalStages(approvalStages);
unifiedRoleManagementPolicyRule.setSetting(setting);
UnifiedRoleManagementPolicyRule result = graphClient.policies().roleManagementPolicies().byUnifiedRoleManagementPolicyId("{unifiedRoleManagementPolicy-id}").rules().byUnifiedRoleManagementPolicyRuleId("{unifiedRoleManagementPolicyRule-id}").patch(unifiedRoleManagementPolicyRule);


```