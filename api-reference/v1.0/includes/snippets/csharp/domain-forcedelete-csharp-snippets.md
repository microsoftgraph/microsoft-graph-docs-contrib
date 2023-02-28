---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Domains.Item.MicrosoftGraphForceDelete.ForceDeletePostRequestBody
{
	DisableUserAccounts = true,
};
await graphClient.Domains["domain-id"].MicrosoftGraphForceDelete.PostAsync(requestBody);


```