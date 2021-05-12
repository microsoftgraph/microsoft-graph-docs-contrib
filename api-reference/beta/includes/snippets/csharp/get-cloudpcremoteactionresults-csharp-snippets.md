---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DeviceManagement.managedDevices["{managedDeviceId}"]
	.GetCloudPcRemoteActionResults()
	.Request()
	.GetAsync();

```