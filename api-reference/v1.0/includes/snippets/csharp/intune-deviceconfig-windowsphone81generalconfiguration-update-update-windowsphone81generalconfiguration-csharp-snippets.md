---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsPhone81GeneralConfiguration
{
	OdataType = "#microsoft.graph.windowsPhone81GeneralConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	ApplyOnlyToWindowsPhone81 = true,
	AppsBlockCopyPaste = true,
	BluetoothBlocked = true,
	CameraBlocked = true,
	CellularBlockWifiTethering = true,
	CompliantAppsList = new List<AppListItem>
	{
		new AppListItem
		{
			OdataType = "microsoft.graph.appListItem",
			Name = "Name value",
			Publisher = "Publisher value",
			AppStoreUrl = "https://example.com/appStoreUrl/",
			AppId = "App Id value",
		},
	},
	CompliantAppListType = AppListType.AppsInListCompliant,
	DiagnosticDataBlockSubmission = true,
	EmailBlockAddingAccounts = true,
	LocationServicesBlocked = true,
	MicrosoftAccountBlocked = true,
	NfcBlocked = true,
	PasswordBlockSimple = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeScreenTimeout = 14,
	PasswordMinimumCharacterSetCount = 0,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordSignInFailureCountBeforeFactoryReset = 12,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordRequired = true,
	ScreenCaptureBlocked = true,
	StorageBlockRemovableStorage = true,
	StorageRequireEncryption = true,
	WebBrowserBlocked = true,
	WifiBlocked = true,
	WifiBlockAutomaticConnectHotspots = true,
	WifiBlockHotspotReporting = true,
	WindowsStoreBlocked = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```