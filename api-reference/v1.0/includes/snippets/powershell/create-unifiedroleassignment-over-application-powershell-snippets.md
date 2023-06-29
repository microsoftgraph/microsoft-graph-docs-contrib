---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleAssignment"
	principalId = "6b937a9d-c731-465b-a844-2d5b5368c161"
	roleDefinitionId = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
	directoryScopeId = "/661e1310-bd76-4795-89a7-8f3c8f855bfc"
}

New-MgRoleManagementDirectoryRoleAssignment -BodyParameter $params

```