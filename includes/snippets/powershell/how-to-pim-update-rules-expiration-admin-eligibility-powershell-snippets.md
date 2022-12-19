---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
	Id = "Expiration_Admin_Eligibility"
	IsExpirationRequired = $true
	MaximumDuration = "P90D"
	Target = @{
		"@odata.type" = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
		Caller = "Admin"
		Operations = @(
			"All"
		)
		Level = "Eligibility"
		InheritableSettings = @(
		)
		EnforcedSettings = @(
		)
	}
}

Update-MgPolicyRoleManagementPolicyRule -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -UnifiedRoleManagementPolicyRuleId $unifiedRoleManagementPolicyRuleId -BodyParameter $params

```