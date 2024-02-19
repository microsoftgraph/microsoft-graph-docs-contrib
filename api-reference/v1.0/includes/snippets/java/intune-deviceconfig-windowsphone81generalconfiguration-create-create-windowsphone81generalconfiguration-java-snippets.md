---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsPhone81GeneralConfiguration deviceConfiguration = new WindowsPhone81GeneralConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windowsPhone81GeneralConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setApplyOnlyToWindowsPhone81(true);
deviceConfiguration.setAppsBlockCopyPaste(true);
deviceConfiguration.setBluetoothBlocked(true);
deviceConfiguration.setCameraBlocked(true);
deviceConfiguration.setCellularBlockWifiTethering(true);
LinkedList<AppListItem> compliantAppsList = new LinkedList<AppListItem>();
AppListItem appListItem = new AppListItem();
appListItem.setOdataType("microsoft.graph.appListItem");
appListItem.setName("Name value");
appListItem.setPublisher("Publisher value");
appListItem.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem.setAppId("App Id value");
compliantAppsList.add(appListItem);
deviceConfiguration.setCompliantAppsList(compliantAppsList);
deviceConfiguration.setCompliantAppListType(AppListType.AppsInListCompliant);
deviceConfiguration.setDiagnosticDataBlockSubmission(true);
deviceConfiguration.setEmailBlockAddingAccounts(true);
deviceConfiguration.setLocationServicesBlocked(true);
deviceConfiguration.setMicrosoftAccountBlocked(true);
deviceConfiguration.setNfcBlocked(true);
deviceConfiguration.setPasswordBlockSimple(true);
deviceConfiguration.setPasswordExpirationDays(6);
deviceConfiguration.setPasswordMinimumLength(5);
deviceConfiguration.setPasswordMinutesOfInactivityBeforeScreenTimeout(14);
deviceConfiguration.setPasswordMinimumCharacterSetCount(0);
deviceConfiguration.setPasswordPreviousPasswordBlockCount(2);
deviceConfiguration.setPasswordSignInFailureCountBeforeFactoryReset(12);
deviceConfiguration.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceConfiguration.setPasswordRequired(true);
deviceConfiguration.setScreenCaptureBlocked(true);
deviceConfiguration.setStorageBlockRemovableStorage(true);
deviceConfiguration.setStorageRequireEncryption(true);
deviceConfiguration.setWebBrowserBlocked(true);
deviceConfiguration.setWifiBlocked(true);
deviceConfiguration.setWifiBlockAutomaticConnectHotspots(true);
deviceConfiguration.setWifiBlockHotspotReporting(true);
deviceConfiguration.setWindowsStoreBlocked(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```