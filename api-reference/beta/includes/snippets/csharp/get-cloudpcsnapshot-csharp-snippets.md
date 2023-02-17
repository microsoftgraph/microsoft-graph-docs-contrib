---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcSnapshot = await graphClient.DeviceManagement.VirtualEndpoint.Snapshots["{cloudPcSnapshot-id}"]
	.Request()
	.GetAsync();

```