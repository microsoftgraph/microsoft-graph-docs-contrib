---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var custodians = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Custodians
	.Request()
	.GetAsync();

```