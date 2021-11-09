---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var supportedRegions = await graphClient.DeviceManagement.VirtualEndpoint.SupportedRegions
	.Request()
	.GetAsync();

```