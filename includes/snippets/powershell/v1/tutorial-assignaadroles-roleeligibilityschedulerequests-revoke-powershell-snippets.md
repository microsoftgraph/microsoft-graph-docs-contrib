---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	action = "AdminRemove"
	principalId = "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3"
	roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	directoryScopeId = "/"
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```