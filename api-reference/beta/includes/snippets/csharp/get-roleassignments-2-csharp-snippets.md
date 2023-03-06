---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.Directory.RoleAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = " principalId eq 'f1847572-48aa-47aa-96a3-2ec61904f41f'";
});


```