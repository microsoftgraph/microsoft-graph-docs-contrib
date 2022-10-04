---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCases = await graphClient.Security.Cases.EdiscoveryCases
	.Request()
	.GetAsync();

```