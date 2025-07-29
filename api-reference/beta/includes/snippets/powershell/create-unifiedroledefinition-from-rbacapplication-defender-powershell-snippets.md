---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Enrollment

$params = @{
	description = "Role 1 description"
	displayName = "Role 1"
	rolePermissions = @(
		@{
			allowedResourceActions = @(
			"microsoft.xdr/securityposture/read"
		)
	}
)
}

New-MgBetaRoleManagementDefenderRoleDefinition -BodyParameter $params

```