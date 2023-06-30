---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	isActive = $false
}

Update-MgIdentityGovernanceRoleManagementAlert -UnifiedRoleManagementAlertId $unifiedRoleManagementAlertId -BodyParameter $params

```