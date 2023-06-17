---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleAssignment"
	roleDefinitionId = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d"
	principalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"
	directoryScopeId = "/attributeSets/Engineering"
}

New-MgRoleManagementDirectoryRoleAssignment -BodyParameter $params

```