---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementPolicyRule
{
	OdataType = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
	Id = "Enablement_EndUser_Assignment",
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
			"enabledRules" , new List<string>
			{
				"Justification",
				"MultiFactorAuthentication",
				"Ticketing",
			}
		},
	},
};
var result = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"].PatchAsync(requestBody);


```