---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Enrollment

$params = @{
	displayName = "NewName"
	description = "A new roleAssignment"
}

Update-MgBetaRoleManagementCloudPcRoleAssignment -UnifiedRoleAssignmentMultipleId $unifiedRoleAssignmentMultipleId -BodyParameter $params

```