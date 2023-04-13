---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcExternalPartnerSetting = new CloudPcExternalPartnerSetting
{
	EnableConnection = true
};

await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings["{cloudPcExternalPartnerSetting-id}"]
	.Request()
	.UpdateAsync(cloudPcExternalPartnerSetting);

```