---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration"
	isEnabled = "true"
	globalAdminCountThreshold = 
	percentageOfGlobalAdminsOutOfRolesThreshold = 
}

Update-MgBetaIdentityGovernanceRoleManagementAlertConfiguration -UnifiedRoleManagementAlertConfigurationId $unifiedRoleManagementAlertConfigurationId -BodyParameter $params

```