---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	action = "AdminRemove"
	principalId = "e77cbb23-0ff2-4e18-819c-690f58269752"
	roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	directoryScopeId = "/"
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```