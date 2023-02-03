---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var snapshots = await graphClient.DeviceManagement.VirtualEndpoint.Snapshots
	.Request()
	.GetAsync();

```