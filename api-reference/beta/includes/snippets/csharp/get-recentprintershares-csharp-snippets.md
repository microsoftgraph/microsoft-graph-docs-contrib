---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recentPrinterShares = await graphClient.Me.RecentPrinterShares
	.Request()
	.GetAsync();

```