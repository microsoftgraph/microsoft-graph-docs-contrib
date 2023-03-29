---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleDefinition
{
	Description = "An example custom role",
	DisplayName = "ExampleCustomRole",
	RolePermissions = new List<UnifiedRolePermission>
	{
		new UnifiedRolePermission
		{
			AllowedResourceActions = new List<string>
			{
				"Microsoft.CloudPC/CloudPCs/Read",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"condition" , "null"
		},
	},
};
var result = await graphClient.RoleManagement.CloudPC.RoleDefinitions.PostAsync(requestBody);


```