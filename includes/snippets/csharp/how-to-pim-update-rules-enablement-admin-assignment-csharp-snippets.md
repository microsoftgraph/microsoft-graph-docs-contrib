---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyEnablementRule
{
	Id = "Enablement_Admin_Assignment",
	EnabledRules = new List<String>()
	{
		"Justification",
		"MultiFactorAuthentication"
	},
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
		Caller = "Admin",
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
	}
};

await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"]
	.Request()
	.UpdateAsync(unifiedRoleManagementPolicyRule);

```