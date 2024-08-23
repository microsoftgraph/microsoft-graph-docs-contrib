---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows81GeneralConfiguration deviceConfiguration = new Windows81GeneralConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windows81GeneralConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setAccountsBlockAddingNonMicrosoftAccountEmail(true);
deviceConfiguration.setApplyOnlyToWindows81(true);
deviceConfiguration.setBrowserBlockAutofill(true);
deviceConfiguration.setBrowserBlockAutomaticDetectionOfIntranetSites(true);
deviceConfiguration.setBrowserBlockEnterpriseModeAccess(true);
deviceConfiguration.setBrowserBlockJavaScript(true);
deviceConfiguration.setBrowserBlockPlugins(true);
deviceConfiguration.setBrowserBlockPopups(true);
deviceConfiguration.setBrowserBlockSendingDoNotTrackHeader(true);
deviceConfiguration.setBrowserBlockSingleWordEntryOnIntranetSites(true);
deviceConfiguration.setBrowserRequireSmartScreen(true);
deviceConfiguration.setBrowserEnterpriseModeSiteListLocation("Browser Enterprise Mode Site List Location value");
deviceConfiguration.setBrowserInternetSecurityLevel(InternetSiteSecurityLevel.Medium);
deviceConfiguration.setBrowserIntranetSecurityLevel(SiteSecurityLevel.Low);
deviceConfiguration.setBrowserLoggingReportLocation("Browser Logging Report Location value");
deviceConfiguration.setBrowserRequireHighSecurityForRestrictedSites(true);
deviceConfiguration.setBrowserRequireFirewall(true);
deviceConfiguration.setBrowserRequireFraudWarning(true);
deviceConfiguration.setBrowserTrustedSitesSecurityLevel(SiteSecurityLevel.Low);
deviceConfiguration.setCellularBlockDataRoaming(true);
deviceConfiguration.setDiagnosticsBlockDataSubmission(true);
deviceConfiguration.setPasswordBlockPicturePasswordAndPin(true);
deviceConfiguration.setPasswordExpirationDays(6);
deviceConfiguration.setPasswordMinimumLength(5);
deviceConfiguration.setPasswordMinutesOfInactivityBeforeScreenTimeout(14);
deviceConfiguration.setPasswordMinimumCharacterSetCount(0);
deviceConfiguration.setPasswordPreviousPasswordBlockCount(2);
deviceConfiguration.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceConfiguration.setPasswordSignInFailureCountBeforeFactoryReset(12);
deviceConfiguration.setStorageRequireDeviceEncryption(true);
deviceConfiguration.setUpdatesRequireAutomaticUpdates(true);
deviceConfiguration.setUserAccountControlSettings(WindowsUserAccountControlSettings.AlwaysNotify);
deviceConfiguration.setWorkFoldersUrl("https://example.com/workFoldersUrl/");
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```