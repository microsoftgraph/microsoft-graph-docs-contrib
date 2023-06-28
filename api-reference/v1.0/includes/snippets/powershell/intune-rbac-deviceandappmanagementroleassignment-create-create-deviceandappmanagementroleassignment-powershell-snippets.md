---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.deviceAndAppManagementRoleAssignment"
	displayName = "Display Name value"
	description = "Description value"
	resourceScopes = @(
		"Resource Scopes value"
	)
	members = @(
		"Members value"
	)
}

New-MgDeviceManagementRoleAssignment -BodyParameter $params

```