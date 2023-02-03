---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	Action = "adminAssign"
	Justification = "Assign Groups Admin to IT Helpdesk group"
	RoleDefinitionId = "fdd7a751-b60b-444a-984c-02652fe8fa1c"
	DirectoryScopeId = "/"
	PrincipalId = "071cc716-8147-4397-a5ba-b2105951cc0b"
	ScheduleInfo = @{
		StartDateTime = [System.DateTime]::Parse("2022-04-10T00:00:00Z")
		Expiration = @{
			Type = "NoExpiration"
		}
	}
}

New-MgRoleManagementDirectoryRoleAssignmentScheduleRequest -BodyParameter $params

```