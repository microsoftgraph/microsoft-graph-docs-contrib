---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalPartnerSettings = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings
	.Request()
	.GetAsync();

```