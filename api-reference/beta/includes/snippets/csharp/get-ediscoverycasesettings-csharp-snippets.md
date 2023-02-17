---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCaseSettings = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Settings
	.Request()
	.GetAsync();

```