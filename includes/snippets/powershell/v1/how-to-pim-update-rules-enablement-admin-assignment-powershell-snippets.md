---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"
	id = "Enablement_Admin_Assignment"
	enabledRules = @(
		"Justification"
		"MultiFactorAuthentication"
	)
	target = @{
		"@odata.type" = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
		caller = "Admin"
		operations = @(
			"All"
		)
		level = "Assignment"
		inheritableSettings = @(
		)
		enforcedSettings = @(
		)
	}
}

Update-MgPolicyRoleManagementPolicyRule -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -UnifiedRoleManagementPolicyRuleId $unifiedRoleManagementPolicyRuleId -BodyParameter $params

```