---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	action = "AdminAssign"
	justification = "Assign User Admin eligibility to IT Helpdesk (User) group"
	roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
	directoryScopeId = "/"
	principalId = "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3"
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2025-03-21T11:06:00Z")
		expiration = @{
			endDateTime = [System.DateTime]::Parse("2026-03-21T00:00:00Z")
			type = "AfterDateTime"
		}
	}
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```