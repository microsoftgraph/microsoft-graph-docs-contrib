---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	action = "SelfActivate"
	principalId = "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f"
	roleDefinitionId = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
	directoryScopeId = "/"
	justification = "Need to update app roles for selected apps."
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2021-08-17T17:40:00.000Z")
		expiration = @{
			type = "AfterDuration"
			duration = "PT5H"
		}
	}
	ticketInfo = @{
		ticketNumber = "CONTOSO:Normal-67890"
		ticketSystem = "MS Project"
	}
}

New-MgRoleManagementDirectoryRoleAssignmentScheduleRequest -BodyParameter $params

```