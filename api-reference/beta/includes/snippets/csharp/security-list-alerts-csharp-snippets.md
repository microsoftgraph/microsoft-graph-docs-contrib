---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alerts_v2 = await graphClient.Security.Alerts_v2
	.Request()
	.GetAsync();

```