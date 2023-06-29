---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	action = "adminAssign"
	justification = "Assign Attribute Assignment Admin eligibility to restricted user"
	roleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4"
	directoryScopeId = "/"
	principalId = "071cc716-8147-4397-a5ba-b2105951cc0b"
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2022-04-10T00:00:00Z")
		expiration = @{
			type = "afterDateTime"
			endDateTime = [System.DateTime]::Parse("2024-04-10T00:00:00Z")
		}
	}
}

New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params

```