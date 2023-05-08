---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.DeviceManagement.RoleAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "principalId eq '9e47fc6f-2d7a-464c-944e-d3dd0de522e4'";
});


```