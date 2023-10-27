---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosManagedAppProtection
{
	OdataType = "#microsoft.graph.iosManagedAppProtection",
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
	IsAssigned = true,
	AppDataEncryptionType = ManagedAppDataEncryptionType.AfterDeviceRestart,
	MinimumRequiredSdkVersion = "Minimum Required Sdk Version value",
	DeployedAppCount = 0,
	FaceIdBlocked = true,
	CustomBrowserProtocol = "Custom Browser Protocol value",
};
var result = await graphClient.DeviceAppManagement.IosManagedAppProtections.PostAsync(requestBody);


```