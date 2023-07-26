---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidGeneralDeviceConfiguration
{
	OdataType = "#microsoft.graph.androidGeneralDeviceConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AppsBlockClipboardSharing = true,
	AppsBlockCopyPaste = true,
	AppsBlockYouTube = true,
	BluetoothBlocked = true,
	CameraBlocked = true,
	CellularBlockDataRoaming = true,
	CellularBlockMessaging = true,
	CellularBlockVoiceRoaming = true,
	CellularBlockWiFiTethering = true,
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
	LocationServicesBlocked = true,
	GoogleAccountBlockAutoSync = true,
	GooglePlayStoreBlocked = true,
	KioskModeBlockSleepButton = true,
	KioskModeBlockVolumeButtons = true,
	KioskModeApps = new List<AppListItem>
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
	NfcBlocked = true,
	PasswordBlockFingerprintUnlock = true,
	PasswordBlockTrustAgents = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeScreenTimeout = 14,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordSignInFailureCountBeforeFactoryReset = 12,
	PasswordRequiredType = AndroidRequiredPasswordType.Alphabetic,
	PasswordRequired = true,
	PowerOffBlocked = true,
	FactoryResetBlocked = true,
	ScreenCaptureBlocked = true,
	DeviceSharingAllowed = true,
	StorageBlockGoogleBackup = true,
	StorageBlockRemovableStorage = true,
	StorageRequireDeviceEncryption = true,
	StorageRequireRemovableStorageEncryption = true,
	VoiceAssistantBlocked = true,
	VoiceDialingBlocked = true,
	WebBrowserBlockPopups = true,
	WebBrowserBlockAutofill = true,
	WebBrowserBlockJavaScript = true,
	WebBrowserBlocked = true,
	WebBrowserCookieSettings = WebBrowserCookieSettings.BlockAlways,
	WiFiBlocked = true,
	AppsInstallAllowList = new List<AppListItem>
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
	AppsLaunchBlockList = new List<AppListItem>
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
	AppsHideList = new List<AppListItem>
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
	SecurityRequireVerifyApps = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```