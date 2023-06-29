---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	action = "selfActivate"
	principalId = "071cc716-8147-4397-a5ba-b2105951cc0b"
	roleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4"
	directoryScopeId = "/"
	justification = "I need access to the Attribute Administrator role to manage attributes to be assigned to restricted AUs"
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2022-04-14T00:00:00.000Z")
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