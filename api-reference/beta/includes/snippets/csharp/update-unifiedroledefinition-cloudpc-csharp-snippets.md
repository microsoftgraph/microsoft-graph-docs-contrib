---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleDefinition = new UnifiedRoleDefinition
{
	Description = "Update basic properties and permission of application registrations",
	DisplayName = "ExampleCustomRole",
	RolePermissions = new List<UnifiedRolePermission>()
	{
		new UnifiedRolePermission
		{
			AllowedResourceActions = new List<String>()
			{
				"Microsoft.CloudPC/CloudPCs/Read",
				"Microsoft.CloudPC/CloudPCs/Reprovision"
			}
		}
	}
};

await graphClient.RoleManagement.CloudPC.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.Request()
	.UpdateAsync(unifiedRoleDefinition);

```