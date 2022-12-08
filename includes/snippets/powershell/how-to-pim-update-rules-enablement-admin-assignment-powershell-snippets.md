---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"
	Id = "Enablement_Admin_Assignment"
	EnabledRules = @(
		"Justification"
		"MultiFactorAuthentication"
	)
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