---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosMobileAppConfiguration
{
	OdataType = "#microsoft.graph.iosMobileAppConfiguration",
	TargetedMobileApps = new List<string>
	{
		"Targeted Mobile Apps value",
	},
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	EncodedSettingXml = Convert.FromBase64String("ZW5jb2RlZFNldHRpbmdYbWw="),
	Settings = new List<AppConfigurationSettingItem>
	{
		new AppConfigurationSettingItem
		{
			OdataType = "microsoft.graph.appConfigurationSettingItem",
			AppConfigKey = "App Config Key value",
			AppConfigKeyType = MdmAppConfigKeyType.IntegerType,
			AppConfigKeyValue = "App Config Key Value value",
		},
	},
};
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations.PostAsync(requestBody);


```