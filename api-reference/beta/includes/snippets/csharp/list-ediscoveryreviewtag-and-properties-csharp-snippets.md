---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tags = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Tags
	.Request()
	.GetAsync();

```