---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	Description = "Update basic properties and permission of application registrations"
	DisplayName = "ExampleCustomRole"
	RolePermissions = @(
		@{
			AllowedResourceActions = @(
				"Microsoft.CloudPC/CloudPCs/Read"
				"Microsoft.CloudPC/CloudPCs/Reprovision"
			)
		}
	)
}

Update-MgRoleManagementCloudPcRoleDefinition -UnifiedRoleDefinitionId $unifiedRoleDefinitionId -BodyParameter $params

```