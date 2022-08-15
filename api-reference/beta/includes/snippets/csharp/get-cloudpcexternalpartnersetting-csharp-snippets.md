---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcExternalPartnerSetting = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings["{cloudPcExternalPartnerSetting-id}"]
	.Request()
	.GetAsync();

```