---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getCloudPcRemoteActionResults = await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"]
	.GetCloudPcRemoteActionResults()
	.Request()
	.GetAsync();

```