---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyExpirationRule
{
	Id = "Expiration_EndUser_Assignment",
	IsExpirationRequired = true,
	MaximumDuration = new Duration("PT1H45M"),
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
		Caller = "EndUser",
		Operations = new List<String>()
		{
			"All"
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