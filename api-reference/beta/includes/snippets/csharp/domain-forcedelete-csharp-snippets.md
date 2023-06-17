---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Domains.Item.ForceDelete.ForceDeletePostRequestBody
{
	DisableUserAccounts = true,
};
await graphClient.Domains["{domain-id}"].ForceDelete.PostAsync(requestBody);


```