---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	Action = "AdminAssign"
	Justification = "Assign User Admin eligibility to IT Helpdesk (User) group"
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	DirectoryScopeId = "/"
	PrincipalId = "e77cbb23-0ff2-4e18-819c-690f58269752"
	ScheduleInfo = @{
		StartDateTime = [System.DateTime]::Parse("2021-07-01T00:00:00Z")
		Expiration = @{
			EndDateTime = [System.DateTime]::Parse("2022-06-30T00:00:00Z")
			Type = "AfterDateTime"
		}
	}
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```