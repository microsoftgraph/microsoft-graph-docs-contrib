---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyExpirationRule
{
	Id = "Expiration_Admin_Assignment",
	IsExpirationRequired = true,
	MaximumDuration = new Duration("P90D"),
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