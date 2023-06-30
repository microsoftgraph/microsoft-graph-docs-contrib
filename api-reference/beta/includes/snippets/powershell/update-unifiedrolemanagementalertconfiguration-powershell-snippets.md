---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration"
	isEnabled = "true"
	globalAdminCountThreshold = 
	percentageOfGlobalAdminsOutOfRolesThreshold = 
}

Update-MgIdentityGovernanceRoleManagementAlertConfiguration -UnifiedRoleManagementAlertConfigurationId $unifiedRoleManagementAlertConfigurationId -BodyParameter $params

```