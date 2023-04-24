---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementPolicyRule
{
	OdataType = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
	Id = "Expiration_Admin_Eligibility",
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
		OdataType = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
		Caller = "Admin",
		Operations = new List<UnifiedRoleManagementPolicyRuleTargetOperations?>
		{
			UnifiedRoleManagementPolicyRuleTargetOperations.All,
		},
		Level = "Eligibility",
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
			"isExpirationRequired" , true
		},
		{
			"maximumDuration" , "P90D"
		},
	},
};
var result = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"].PatchAsync(requestBody);


```