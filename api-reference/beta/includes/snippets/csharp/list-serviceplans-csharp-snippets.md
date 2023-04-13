---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePlans = await graphClient.DeviceManagement.VirtualEndpoint.ServicePlans
	.Request()
	.GetAsync();

```