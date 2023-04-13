---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcReviewStatus = await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"]
	.GetCloudPcReviewStatus()
	.Request()
	.GetAsync();

```