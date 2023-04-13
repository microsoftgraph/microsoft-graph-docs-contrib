---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	displayName = "NewName"
	description = "A new roleAssignment"
}

Update-MgRoleManagementCloudPcRoleAssignment -UnifiedRoleAssignmentMultipleId $unifiedRoleAssignmentMultipleId -BodyParameter $params

```