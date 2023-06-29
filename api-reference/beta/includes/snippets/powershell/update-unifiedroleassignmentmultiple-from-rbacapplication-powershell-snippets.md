---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	principalIds = @(
		"0aeec2c1-fee7-4e02-b534-6f920d25b300"
		"2d5386a7-732f-44db-9cf8-f82dd2a1c0e0"
	)
}

Update-MgRoleManagementDeviceManagementRoleAssignment -UnifiedRoleAssignmentMultipleId $unifiedRoleAssignmentMultipleId -BodyParameter $params

```