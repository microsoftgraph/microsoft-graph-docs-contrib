---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.DeviceManagement.VirtualEndpoint.Reports
	.GetRealTimeRemoteConnectionLatency("f5ff445f-7488-40f8-8ab9-ee784a9fffff")
	.Request()
	.GetAsync();

```