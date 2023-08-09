---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcUserSetting
{
	OdataType = "#microsoft.graph.cloudPcUserSetting",
	DisplayName = "Example",
	SelfServiceEnabled = true,
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyInHours = 16,
		UserRestoreEnabled = true,
	},
	LocalAdminEnabled = false,
	ResetEnabled = true,
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"].PatchAsync(requestBody);


```