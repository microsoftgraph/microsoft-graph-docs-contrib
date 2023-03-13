---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyApprovalRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyApprovalRule();
unifiedRoleManagementPolicyRule.id = "Approval_EndUser_Assignment";
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
unifiedRoleManagementPolicyRule.target = target;
ApprovalSettings setting = new ApprovalSettings();
setting.isApprovalRequired = true;
setting.isApprovalRequiredForExtension = false;
setting.isRequestorJustificationRequired = true;
setting.approvalMode = "SingleStage";
LinkedList<UnifiedApprovalStage> approvalStagesList = new LinkedList<UnifiedApprovalStage>();
UnifiedApprovalStage approvalStages = new UnifiedApprovalStage();
approvalStages.approvalStageTimeOutInDays = 1;
approvalStages.isApproverJustificationRequired = true;
approvalStages.escalationTimeInMinutes = 0;
LinkedList<SubjectSet> primaryApproversList = new LinkedList<SubjectSet>();
SingleUser primaryApprovers = new SingleUser();
primaryApprovers.userId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6";
primaryApproversList.add(primaryApprovers);
GroupMembers primaryApprovers1 = new GroupMembers();
primaryApprovers1.groupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b";
primaryApproversList.add(primaryApprovers1);
approvalStages.primaryApprovers = primaryApproversList;
approvalStages.isEscalationEnabled = false;
LinkedList<SubjectSet> escalationApproversList = new LinkedList<SubjectSet>();
approvalStages.escalationApprovers = escalationApproversList;
approvalStagesList.add(approvalStages);
setting.approvalStages = approvalStagesList;
unifiedRoleManagementPolicyRule.setting = setting;

graphClient.policies().roleManagementPolicies("DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67").rules("Approval_EndUser_Assignment")
	.buildRequest()
	.patch(unifiedRoleManagementPolicyRule);

```