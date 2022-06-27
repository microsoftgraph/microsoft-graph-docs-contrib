---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var operations = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Operations
	.Request()
	.GetAsync();

```