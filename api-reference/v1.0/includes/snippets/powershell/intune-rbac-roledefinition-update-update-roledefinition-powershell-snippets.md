---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.roleDefinition"
	displayName = "Display Name value"
	description = "Description value"
	rolePermissions = @(
		@{
			"@odata.type" = "microsoft.graph.rolePermission"
			resourceActions = @(
				@{
					"@odata.type" = "microsoft.graph.resourceAction"
					allowedResourceActions = @(
						"Allowed Resource Actions value"
					)
					notAllowedResourceActions = @(
						"Not Allowed Resource Actions value"
					)
				}
			)
		}
	)
	isBuiltIn = $true
}

Update-MgDeviceManagementRoleDefinition -RoleDefinitionId $roleDefinitionId -BodyParameter $params

```