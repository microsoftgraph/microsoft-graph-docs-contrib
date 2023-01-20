---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyApprovalRule
{
	Id = "Approval_EndUser_Assignment",
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
		Caller = "EndUser",
		Operations = new List<UnifiedRoleManagementPolicyRuleTargetOperations>()
		{
			UnifiedRoleManagementPolicyRuleTargetOperations.All
		},
		Level = "Assignment",
		InheritableSettings = new List<String>()
		{
		},
		EnforcedSettings = new List<String>()
		{
		}
	},
	Setting = new ApprovalSettings
	{
		IsApprovalRequired = true,
		IsApprovalRequiredForExtension = false,
		IsRequestorJustificationRequired = true,
		ApprovalMode = "SingleStage",
		ApprovalStages = new List<UnifiedApprovalStage>()
		{
			new UnifiedApprovalStage
			{
				ApprovalStageTimeOutInDays = 1,
				IsApproverJustificationRequired = true,
				EscalationTimeInMinutes = 0,
				PrimaryApprovers = new List<SubjectSet>()
				{
					new SingleUser
					{
						UserId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
					},
					new GroupMembers
					{
						GroupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
					}
				},
				IsEscalationEnabled = false,
				EscalationApprovers = new List<SubjectSet>()
				{
				}
			}
		}
	}
};

await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"]
	.Request()
	.UpdateAsync(unifiedRoleManagementPolicyRule);

```