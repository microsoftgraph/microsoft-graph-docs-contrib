---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var searches = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Searches
	.Request()
	.GetAsync();

```