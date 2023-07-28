---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows81GeneralConfiguration deviceConfiguration = new Windows81GeneralConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.accountsBlockAddingNonMicrosoftAccountEmail = true;
deviceConfiguration.applyOnlyToWindows81 = true;
deviceConfiguration.browserBlockAutofill = true;
deviceConfiguration.browserBlockAutomaticDetectionOfIntranetSites = true;
deviceConfiguration.browserBlockEnterpriseModeAccess = true;
deviceConfiguration.browserBlockJavaScript = true;
deviceConfiguration.browserBlockPlugins = true;
deviceConfiguration.browserBlockPopups = true;
deviceConfiguration.browserBlockSendingDoNotTrackHeader = true;
deviceConfiguration.browserBlockSingleWordEntryOnIntranetSites = true;
deviceConfiguration.browserRequireSmartScreen = true;
deviceConfiguration.browserEnterpriseModeSiteListLocation = "Browser Enterprise Mode Site List Location value";
deviceConfiguration.browserInternetSecurityLevel = InternetSiteSecurityLevel.MEDIUM;
deviceConfiguration.browserIntranetSecurityLevel = SiteSecurityLevel.LOW;
deviceConfiguration.browserLoggingReportLocation = "Browser Logging Report Location value";
deviceConfiguration.browserRequireHighSecurityForRestrictedSites = true;
deviceConfiguration.browserRequireFirewall = true;
deviceConfiguration.browserRequireFraudWarning = true;
deviceConfiguration.browserTrustedSitesSecurityLevel = SiteSecurityLevel.LOW;
deviceConfiguration.cellularBlockDataRoaming = true;
deviceConfiguration.diagnosticsBlockDataSubmission = true;
deviceConfiguration.passwordBlockPicturePasswordAndPin = true;
deviceConfiguration.passwordExpirationDays = 6;
deviceConfiguration.passwordMinimumLength = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeScreenTimeout = 14;
deviceConfiguration.passwordMinimumCharacterSetCount = 0;
deviceConfiguration.passwordPreviousPasswordBlockCount = 2;
deviceConfiguration.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceConfiguration.passwordSignInFailureCountBeforeFactoryReset = 12;
deviceConfiguration.storageRequireDeviceEncryption = true;
deviceConfiguration.updatesRequireAutomaticUpdates = true;
deviceConfiguration.userAccountControlSettings = WindowsUserAccountControlSettings.ALWAYS_NOTIFY;
deviceConfiguration.workFoldersUrl = "https://example.com/workFoldersUrl/";

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```