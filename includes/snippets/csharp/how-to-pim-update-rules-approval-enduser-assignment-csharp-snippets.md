---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementPolicyApprovalRule
{
	OdataType = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
	Id = "Approval_EndUser_Assignment",
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
		OdataType = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
		Caller = "EndUser",
		Operations = new List<UnifiedRoleManagementPolicyRuleTargetOperations?>
		{
			UnifiedRoleManagementPolicyRuleTargetOperations.All,
		},
		Level = "Assignment",
		InheritableSettings = new List<string>
		{
		},
		EnforcedSettings = new List<string>
		{
		},
	},
	Setting = new ApprovalSettings
	{
		OdataType = "microsoft.graph.approvalSettings",
		IsApprovalRequired = true,
		IsApprovalRequiredForExtension = false,
		IsRequestorJustificationRequired = true,
		ApprovalMode = "SingleStage",
		ApprovalStages = new List<UnifiedApprovalStage>
		{
			new UnifiedApprovalStage
			{
				OdataType = "microsoft.graph.unifiedApprovalStage",
				ApprovalStageTimeOutInDays = 1,
				IsApproverJustificationRequired = true,
				EscalationTimeInMinutes = 0,
				PrimaryApprovers = new List<SubjectSet>
				{
					new SingleUser
					{
						OdataType = "#microsoft.graph.singleUser",
						UserId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6",
					},
					new GroupMembers
					{
						OdataType = "#microsoft.graph.groupMembers",
						GroupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b",
					},
				},
				IsEscalationEnabled = false,
				EscalationApprovers = new List<SubjectSet>
				{
				},
			},
		},
	},
};
var result = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"].PatchAsync(requestBody);


```