---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AndroidGeneralDeviceConfiguration deviceConfiguration = new AndroidGeneralDeviceConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.androidGeneralDeviceConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setAppsBlockClipboardSharing(true);
deviceConfiguration.setAppsBlockCopyPaste(true);
deviceConfiguration.setAppsBlockYouTube(true);
deviceConfiguration.setBluetoothBlocked(true);
deviceConfiguration.setCameraBlocked(true);
deviceConfiguration.setCellularBlockDataRoaming(true);
deviceConfiguration.setCellularBlockMessaging(true);
deviceConfiguration.setCellularBlockVoiceRoaming(true);
deviceConfiguration.setCellularBlockWiFiTethering(true);
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
deviceConfiguration.setLocationServicesBlocked(true);
deviceConfiguration.setGoogleAccountBlockAutoSync(true);
deviceConfiguration.setGooglePlayStoreBlocked(true);
deviceConfiguration.setKioskModeBlockSleepButton(true);
deviceConfiguration.setKioskModeBlockVolumeButtons(true);
LinkedList<AppListItem> kioskModeApps = new LinkedList<AppListItem>();
AppListItem appListItem1 = new AppListItem();
appListItem1.setOdataType("microsoft.graph.appListItem");
appListItem1.setName("Name value");
appListItem1.setPublisher("Publisher value");
appListItem1.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem1.setAppId("App Id value");
kioskModeApps.add(appListItem1);
deviceConfiguration.setKioskModeApps(kioskModeApps);
deviceConfiguration.setNfcBlocked(true);
deviceConfiguration.setPasswordBlockFingerprintUnlock(true);
deviceConfiguration.setPasswordBlockTrustAgents(true);
deviceConfiguration.setPasswordExpirationDays(6);
deviceConfiguration.setPasswordMinimumLength(5);
deviceConfiguration.setPasswordMinutesOfInactivityBeforeScreenTimeout(14);
deviceConfiguration.setPasswordPreviousPasswordBlockCount(2);
deviceConfiguration.setPasswordSignInFailureCountBeforeFactoryReset(12);
deviceConfiguration.setPasswordRequiredType(AndroidRequiredPasswordType.Alphabetic);
deviceConfiguration.setPasswordRequired(true);
deviceConfiguration.setPowerOffBlocked(true);
deviceConfiguration.setFactoryResetBlocked(true);
deviceConfiguration.setScreenCaptureBlocked(true);
deviceConfiguration.setDeviceSharingAllowed(true);
deviceConfiguration.setStorageBlockGoogleBackup(true);
deviceConfiguration.setStorageBlockRemovableStorage(true);
deviceConfiguration.setStorageRequireDeviceEncryption(true);
deviceConfiguration.setStorageRequireRemovableStorageEncryption(true);
deviceConfiguration.setVoiceAssistantBlocked(true);
deviceConfiguration.setVoiceDialingBlocked(true);
deviceConfiguration.setWebBrowserBlockPopups(true);
deviceConfiguration.setWebBrowserBlockAutofill(true);
deviceConfiguration.setWebBrowserBlockJavaScript(true);
deviceConfiguration.setWebBrowserBlocked(true);
deviceConfiguration.setWebBrowserCookieSettings(WebBrowserCookieSettings.BlockAlways);
deviceConfiguration.setWiFiBlocked(true);
LinkedList<AppListItem> appsInstallAllowList = new LinkedList<AppListItem>();
AppListItem appListItem2 = new AppListItem();
appListItem2.setOdataType("microsoft.graph.appListItem");
appListItem2.setName("Name value");
appListItem2.setPublisher("Publisher value");
appListItem2.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem2.setAppId("App Id value");
appsInstallAllowList.add(appListItem2);
deviceConfiguration.setAppsInstallAllowList(appsInstallAllowList);
LinkedList<AppListItem> appsLaunchBlockList = new LinkedList<AppListItem>();
AppListItem appListItem3 = new AppListItem();
appListItem3.setOdataType("microsoft.graph.appListItem");
appListItem3.setName("Name value");
appListItem3.setPublisher("Publisher value");
appListItem3.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem3.setAppId("App Id value");
appsLaunchBlockList.add(appListItem3);
deviceConfiguration.setAppsLaunchBlockList(appsLaunchBlockList);
LinkedList<AppListItem> appsHideList = new LinkedList<AppListItem>();
AppListItem appListItem4 = new AppListItem();
appListItem4.setOdataType("microsoft.graph.appListItem");
appListItem4.setName("Name value");
appListItem4.setPublisher("Publisher value");
appListItem4.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem4.setAppId("App Id value");
appsHideList.add(appListItem4);
deviceConfiguration.setAppsHideList(appsHideList);
deviceConfiguration.setSecurityRequireVerifyApps(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```