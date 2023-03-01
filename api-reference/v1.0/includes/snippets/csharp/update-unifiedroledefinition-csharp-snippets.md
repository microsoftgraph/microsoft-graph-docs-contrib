---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleDefinition
{
	Description = "Update basic properties of application registrations",
	DisplayName = "Application Registration Support Administrator",
	RolePermissions = new List<UnifiedRolePermission>
	{
		new UnifiedRolePermission
		{
			AllowedResourceActions = new List<string>
			{
				"microsoft.directory/applications/basic/read",
			},
		},
	},
};
var result = await graphClient.RoleManagement.Directory.RoleDefinitions["{unifiedRoleDefinition-id}"].PatchAsync(requestBody);


```