---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSupportedCloudPcRemoteActions = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"]
	.GetSupportedCloudPcRemoteActions()
	.Request()
	.GetAsync();

```