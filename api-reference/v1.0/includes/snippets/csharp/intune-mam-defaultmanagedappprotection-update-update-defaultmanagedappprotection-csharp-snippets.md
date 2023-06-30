---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DefaultManagedAppProtection
{
	OdataType = "#microsoft.graph.defaultManagedAppProtection",
	DisplayName = "Display Name value",
	Description = "Description value",
	Version = "Version value",
	PeriodOfflineBeforeAccessCheck = TimeSpan.Parse("-PT17.1357909S"),
	PeriodOnlineBeforeAccessCheck = TimeSpan.Parse("PT35.0018757S"),
	AllowedInboundDataTransferSources = ManagedAppDataTransferLevel.ManagedApps,
	AllowedOutboundDataTransferDestinations = ManagedAppDataTransferLevel.ManagedApps,
	OrganizationalCredentialsRequired = true,
	AllowedOutboundClipboardSharingLevel = ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn,
	DataBackupBlocked = true,
	DeviceComplianceRequired = true,
	ManagedBrowserToOpenLinksRequired = true,
	SaveAsBlocked = true,
	PeriodOfflineBeforeWipeIsEnforced = TimeSpan.Parse("-PT3M22.1587532S"),
	PinRequired = true,
	MaximumPinRetries = 1,
	SimplePinBlocked = true,
	MinimumPinLength = 0,
	PinCharacterSet = ManagedAppPinCharacterSet.AlphanumericAndSymbol,
	PeriodBeforePinReset = TimeSpan.Parse("PT3M29.6631862S"),
	AllowedDataStorageLocations = new List<ManagedAppDataStorageLocation?>
	{
		ManagedAppDataStorageLocation.SharePoint,
	},
	ContactSyncBlocked = true,
	PrintBlocked = true,
	FingerprintBlocked = true,
	DisableAppPinIfDevicePinIsSet = true,
	MinimumRequiredOsVersion = "Minimum Required Os Version value",
	MinimumWarningOsVersion = "Minimum Warning Os Version value",
	MinimumRequiredAppVersion = "Minimum Required App Version value",
	MinimumWarningAppVersion = "Minimum Warning App Version value",
	ManagedBrowser = ManagedBrowserType.MicrosoftEdge,
	AppDataEncryptionType = ManagedAppDataEncryptionType.AfterDeviceRestart,
	ScreenCaptureBlocked = true,
	EncryptAppData = true,
	DisableAppEncryptionIfDeviceEncryptionIsEnabled = true,
	MinimumRequiredSdkVersion = "Minimum Required Sdk Version value",
	CustomSettings = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			OdataType = "microsoft.graph.keyValuePair",
			Name = "Name value",
			Value = "Value value",
		},
	},
	DeployedAppCount = 0,
	MinimumRequiredPatchVersion = "Minimum Required Patch Version value",
	MinimumWarningPatchVersion = "Minimum Warning Patch Version value",
	FaceIdBlocked = true,
};
var result = await graphClient.DeviceAppManagement.DefaultManagedAppProtections["{defaultManagedAppProtection-id}"].PatchAsync(requestBody);


```