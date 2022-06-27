---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	Description = "An example custom role"
	DisplayName = "ExampleCustomRole"
	RolePermissions = @(
		@{
			AllowedResourceActions = @(
				"Microsoft.CloudPC/CloudPCs/Read"
			)
		}
	)
	Condition = "null"
}

New-MgRoleManagementCloudPcRoleDefinition -BodyParameter $params

```