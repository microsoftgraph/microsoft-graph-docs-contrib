---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcUserSetting
{
	OdataType = "#microsoft.graph.cloudPcUserSetting",
	DisplayName = "Example",
	SelfServiceEnabled = false,
	LocalAdminEnabled = true,
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyInHours = 16,
		UserRestoreEnabled = true,
	},
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings.PostAsync(requestBody);


```