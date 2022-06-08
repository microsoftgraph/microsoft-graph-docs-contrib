---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcUserSetting = new CloudPcUserSetting
{
	DisplayName = "Example",
	SelfServiceEnabled = true,
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyInHours = 16,
		UserRestoreEnabled = true
	},
	LocalAdminEnabled = false
};

await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"]
	.Request()
	.UpdateAsync(cloudPcUserSetting);

```