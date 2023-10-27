---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcExternalPartnerSetting
{
	OdataType = "#microsoft.graph.cloudPcExternalPartnerSetting",
	EnableConnection = true,
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings["{cloudPcExternalPartnerSetting-id}"].PatchAsync(requestBody);


```