---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Domains.Item.ForceDelete.ForceDeletePostRequestBody
{
	DisableUserAccounts = true,
};
await graphClient.Domains["{domain-id}"].ForceDelete.PostAsync(requestBody);


```