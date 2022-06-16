---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var asHierarchy = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Tags
	.AsHierarchy()
	.Request()
	.GetAsync();

```