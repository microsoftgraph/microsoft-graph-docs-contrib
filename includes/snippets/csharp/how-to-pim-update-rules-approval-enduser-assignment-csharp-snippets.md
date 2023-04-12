---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementPolicyRule
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
		InheritableSettings = new List<String>
		{
		},
		EnforcedSettings = new List<String>
		{
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"setting" , new 
			{
				OdataType = "microsoft.graph.approvalSettings",
				IsApprovalRequired = true,
				IsApprovalRequiredForExtension = false,
				IsRequestorJustificationRequired = true,
				ApprovalMode = "SingleStage",
				ApprovalStages = new List<>
				{
					new 
					{
						OdataType = "microsoft.graph.unifiedApprovalStage",
						ApprovalStageTimeOutInDays = 1,
						IsApproverJustificationRequired = true,
						EscalationTimeInMinutes = 0,
						PrimaryApprovers = new List<>
						{
							new 
							{
								OdataType = "#microsoft.graph.singleUser",
								UserId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6",
							},
							new 
							{
								OdataType = "#microsoft.graph.groupMembers",
								GroupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b",
							},
						},
						IsEscalationEnabled = false,
						EscalationApprovers = new List<>
						{
						},
					},
				},
			}
		},
	},
};
var result = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"].PatchAsync(requestBody);


```