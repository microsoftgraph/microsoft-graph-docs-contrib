---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
	Id = "Expiration_Admin_Assignment"
	IsExpirationRequired = $true
	MaximumDuration = "P90D"
	Target = @{
		"@odata.type" = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
		Caller = "Admin"
		Operations = @(
			"All"
		)
		Level = "Assignment"
		InheritableSettings = @(
		)
		EnforcedSettings = @(
		)
	}
}

Update-MgPolicyRoleManagementPolicyRule -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -UnifiedRoleManagementPolicyRuleId $unifiedRoleManagementPolicyRuleId -BodyParameter $params

```