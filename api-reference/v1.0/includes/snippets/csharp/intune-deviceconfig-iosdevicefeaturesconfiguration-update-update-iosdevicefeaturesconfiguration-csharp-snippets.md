---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosDeviceFeaturesConfiguration
{
	OdataType = "#microsoft.graph.iosDeviceFeaturesConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AssetTagTemplate = "Asset Tag Template value",
	LockScreenFootnote = "Lock Screen Footnote value",
	HomeScreenDockIcons = new List<IosHomeScreenItem>
	{
		new IosHomeScreenFolder
		{
			OdataType = "microsoft.graph.iosHomeScreenFolder",
			DisplayName = "Display Name value",
			Pages = new List<IosHomeScreenFolderPage>
			{
				new IosHomeScreenFolderPage
				{
					OdataType = "microsoft.graph.iosHomeScreenFolderPage",
					DisplayName = "Display Name value",
					Apps = new List<IosHomeScreenApp>
					{
						new IosHomeScreenApp
						{
							OdataType = "microsoft.graph.iosHomeScreenApp",
							DisplayName = "Display Name value",
							BundleID = "Bundle ID value",
						},
					},
				},
			},
		},
	},
	HomeScreenPages = new List<IosHomeScreenPage>
	{
		new IosHomeScreenPage
		{
			OdataType = "microsoft.graph.iosHomeScreenPage",
			DisplayName = "Display Name value",
			Icons = new List<IosHomeScreenItem>
			{
				new IosHomeScreenFolder
				{
					OdataType = "microsoft.graph.iosHomeScreenFolder",
					DisplayName = "Display Name value",
					Pages = new List<IosHomeScreenFolderPage>
					{
						new IosHomeScreenFolderPage
						{
							OdataType = "microsoft.graph.iosHomeScreenFolderPage",
							DisplayName = "Display Name value",
							Apps = new List<IosHomeScreenApp>
							{
								new IosHomeScreenApp
								{
									OdataType = "microsoft.graph.iosHomeScreenApp",
									DisplayName = "Display Name value",
									BundleID = "Bundle ID value",
								},
							},
						},
					},
				},
			},
		},
	},
	NotificationSettings = new List<IosNotificationSettings>
	{
		new IosNotificationSettings
		{
			OdataType = "microsoft.graph.iosNotificationSettings",
			BundleID = "Bundle ID value",
			AppName = "App Name value",
			Publisher = "Publisher value",
			Enabled = true,
			ShowInNotificationCenter = true,
			ShowOnLockScreen = true,
			AlertType = IosNotificationAlertType.Banner,
			BadgesEnabled = true,
			SoundsEnabled = true,
		},
	},
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```