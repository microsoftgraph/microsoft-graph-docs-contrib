---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	action = "SelfActivate"
	principalId = "d9771b4c-06c5-491a-92cb-3aa4e225a725"
	roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	directoryScopeId = "/"
	justification = "Need to invalidate all app refresh tokens for Contoso users."
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2025-03-21T11:46:00.000Z")
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