---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	Action = "adminRemove"
	RoleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4"
	DirectoryScopeId = "/"
	PrincipalId = "071cc716-8147-4397-a5ba-b2105951cc0b"
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```