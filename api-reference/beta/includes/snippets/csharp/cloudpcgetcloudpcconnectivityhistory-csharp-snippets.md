---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getCloudPcConnectivityHistory = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"]
	.GetCloudPcConnectivityHistory()
	.Request()
	.GetAsync();

```