---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemActivityStat = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Analytics.AllTime
	.Request()
	.GetAsync();

```