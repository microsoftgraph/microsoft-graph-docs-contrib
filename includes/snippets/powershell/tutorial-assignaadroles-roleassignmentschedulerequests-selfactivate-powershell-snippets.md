---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	action = "SelfActivate"
	principalId = "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2"
	roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	directoryScopeId = "/"
	justification = "Need to invalidate all app refresh tokens for Contoso users."
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2021-09-04T15:13:00.000Z")
		expiration = @{
			type = "AfterDuration"
			duration = "PT5H"
		}
	}
	ticketInfo = @{
		ticketNumber = "CONTOSO:Security-012345"
		ticketSystem = "Contoso ICM"
	}
}

New-MgRoleManagementDirectoryRoleAssignmentScheduleRequest -BodyParameter $params

```