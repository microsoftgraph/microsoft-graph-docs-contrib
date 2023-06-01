---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleAssignment"
	roleDefinitionId = "c2cf284d-6c41-4e6b-afac-4b80928c9034"
	principalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"
	directoryScopeId = "/"
}

New-MgRoleManagementDirectoryRoleAssignment -BodyParameter $params

```