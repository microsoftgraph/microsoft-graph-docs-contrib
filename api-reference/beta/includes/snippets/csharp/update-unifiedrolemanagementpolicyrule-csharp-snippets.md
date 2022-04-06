---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyApprovalRule
{
	Target = new UnifiedRoleManagementPolicyRuleTarget
	{
	}
};

await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].Rules["{unifiedRoleManagementPolicyRule-id}"]
	.Request()
	.UpdateAsync(unifiedRoleManagementPolicyRule);

```