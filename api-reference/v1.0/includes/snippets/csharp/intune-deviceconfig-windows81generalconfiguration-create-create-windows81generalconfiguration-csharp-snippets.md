---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows81GeneralConfiguration
{
	OdataType = "#microsoft.graph.windows81GeneralConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AccountsBlockAddingNonMicrosoftAccountEmail = true,
	ApplyOnlyToWindows81 = true,
	BrowserBlockAutofill = true,
	BrowserBlockAutomaticDetectionOfIntranetSites = true,
	BrowserBlockEnterpriseModeAccess = true,
	BrowserBlockJavaScript = true,
	BrowserBlockPlugins = true,
	BrowserBlockPopups = true,
	BrowserBlockSendingDoNotTrackHeader = true,
	BrowserBlockSingleWordEntryOnIntranetSites = true,
	BrowserRequireSmartScreen = true,
	BrowserEnterpriseModeSiteListLocation = "Browser Enterprise Mode Site List Location value",
	BrowserInternetSecurityLevel = InternetSiteSecurityLevel.Medium,
	BrowserIntranetSecurityLevel = SiteSecurityLevel.Low,
	BrowserLoggingReportLocation = "Browser Logging Report Location value",
	BrowserRequireHighSecurityForRestrictedSites = true,
	BrowserRequireFirewall = true,
	BrowserRequireFraudWarning = true,
	BrowserTrustedSitesSecurityLevel = SiteSecurityLevel.Low,
	CellularBlockDataRoaming = true,
	DiagnosticsBlockDataSubmission = true,
	PasswordBlockPicturePasswordAndPin = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeScreenTimeout = 14,
	PasswordMinimumCharacterSetCount = 0,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordSignInFailureCountBeforeFactoryReset = 12,
	StorageRequireDeviceEncryption = true,
	UpdatesRequireAutomaticUpdates = true,
	UserAccountControlSettings = WindowsUserAccountControlSettings.AlwaysNotify,
	WorkFoldersUrl = "https://example.com/workFoldersUrl/",
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```