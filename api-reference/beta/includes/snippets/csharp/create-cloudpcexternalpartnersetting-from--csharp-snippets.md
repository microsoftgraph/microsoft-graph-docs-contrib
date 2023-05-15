---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcExternalPartnerSetting
{
	OdataType = "#microsoft.graph.cloudPcExternalPartnerSetting",
	PartnerId = "198d7140-80bb-4843-8cc4-811377a49a92",
	EnableConnection = true,
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings.PostAsync(requestBody);


```