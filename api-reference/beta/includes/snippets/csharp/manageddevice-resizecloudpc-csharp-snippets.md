---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"]
	.ResizeCloudPc(null)
	.Request()
	.PostAsync();

```