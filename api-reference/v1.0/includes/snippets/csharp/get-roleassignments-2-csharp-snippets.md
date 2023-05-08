---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.Directory.RoleAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = " principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'";
});


```