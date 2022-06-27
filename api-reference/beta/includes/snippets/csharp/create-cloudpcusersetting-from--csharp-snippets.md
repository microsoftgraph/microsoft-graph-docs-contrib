---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcUserSetting = new CloudPcUserSetting
{
	DisplayName = "Example",
	SelfServiceEnabled = false,
	LocalAdminEnabled = true,
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyInHours = 16,
		UserRestoreEnabled = true
	}
};

await graphClient.DeviceManagement.VirtualEndpoint.UserSettings
	.Request()
	.AddAsync(cloudPcUserSetting);

```