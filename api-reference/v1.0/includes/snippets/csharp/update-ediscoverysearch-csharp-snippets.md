---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoverySearch = new Microsoft.Graph.Security.EdiscoverySearch
{
	DisplayName = "Teams search"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Searches["{security.ediscoverySearch-id}"]
	.Request()
	.UpdateAsync(ediscoverySearch);

```