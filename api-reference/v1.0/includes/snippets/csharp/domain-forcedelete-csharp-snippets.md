---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Domains.Item.ForceDelete;

var requestBody = new ForceDeletePostRequestBody
{
	DisableUserAccounts = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Domains["{domain-id}"].ForceDelete.PostAsync(requestBody);


```