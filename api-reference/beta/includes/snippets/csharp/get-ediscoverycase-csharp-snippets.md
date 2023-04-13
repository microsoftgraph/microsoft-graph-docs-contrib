---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCase = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"]
	.Request()
	.GetAsync();

```