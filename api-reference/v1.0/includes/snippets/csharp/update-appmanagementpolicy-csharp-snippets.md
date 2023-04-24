---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AppManagementPolicy
{
	IsEnabled = false,
};
var result = await graphClient.Policies.AppManagementPolicies["{appManagementPolicy-id}"].PatchAsync(requestBody);


```