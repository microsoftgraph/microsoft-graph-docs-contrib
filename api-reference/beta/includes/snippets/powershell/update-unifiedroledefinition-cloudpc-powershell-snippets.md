---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Enrollment

$params = @{
	description = "Update basic properties and permission of application registrations"
	displayName = "ExampleCustomRole"
	rolePermissions = @(
		@{
			allowedResourceActions = @(
				"Microsoft.CloudPC/CloudPCs/Read"
				"Microsoft.CloudPC/CloudPCs/Reprovision"
			)
		}
	)
}

Update-MgBetaRoleManagementCloudPcRoleDefinition -UnifiedRoleDefinitionId $unifiedRoleDefinitionId -BodyParameter $params

```