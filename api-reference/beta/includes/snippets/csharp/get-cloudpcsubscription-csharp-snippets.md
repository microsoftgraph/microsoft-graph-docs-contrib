---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSubscriptions = await graphClient.DeviceManagement.VirtualEndpoint.Snapshots
	.GetSubscriptions()
	.Request()
	.GetAsync();

```