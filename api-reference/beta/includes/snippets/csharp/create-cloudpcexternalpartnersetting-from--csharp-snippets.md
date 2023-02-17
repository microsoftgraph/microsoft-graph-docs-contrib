---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcExternalPartnerSetting = new CloudPcExternalPartnerSetting
{
	PartnerId = "198d7140-80bb-4843-8cc4-811377a49a92",
	EnableConnection = true
};

await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings
	.Request()
	.AddAsync(cloudPcExternalPartnerSetting);

```