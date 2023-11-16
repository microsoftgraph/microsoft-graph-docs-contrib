---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidGeneralDeviceConfiguration deviceConfiguration = new AndroidGeneralDeviceConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.appsBlockClipboardSharing = true;
deviceConfiguration.appsBlockCopyPaste = true;
deviceConfiguration.appsBlockYouTube = true;
deviceConfiguration.bluetoothBlocked = true;
deviceConfiguration.cameraBlocked = true;
deviceConfiguration.cellularBlockDataRoaming = true;
deviceConfiguration.cellularBlockMessaging = true;
deviceConfiguration.cellularBlockVoiceRoaming = true;
deviceConfiguration.cellularBlockWiFiTethering = true;
LinkedList<AppListItem> compliantAppsListList = new LinkedList<AppListItem>();
AppListItem compliantAppsList = new AppListItem();
compliantAppsList.name = "Name value";
compliantAppsList.publisher = "Publisher value";
compliantAppsList.appStoreUrl = "https://example.com/appStoreUrl/";
compliantAppsList.appId = "App Id value";
compliantAppsListList.add(compliantAppsList);
deviceConfiguration.compliantAppsList = compliantAppsListList;
deviceConfiguration.compliantAppListType = AppListType.APPS_IN_LIST_COMPLIANT;
deviceConfiguration.diagnosticDataBlockSubmission = true;
deviceConfiguration.locationServicesBlocked = true;
deviceConfiguration.googleAccountBlockAutoSync = true;
deviceConfiguration.googlePlayStoreBlocked = true;
deviceConfiguration.kioskModeBlockSleepButton = true;
deviceConfiguration.kioskModeBlockVolumeButtons = true;
LinkedList<AppListItem> kioskModeAppsList = new LinkedList<AppListItem>();
AppListItem kioskModeApps = new AppListItem();
kioskModeApps.name = "Name value";
kioskModeApps.publisher = "Publisher value";
kioskModeApps.appStoreUrl = "https://example.com/appStoreUrl/";
kioskModeApps.appId = "App Id value";
kioskModeAppsList.add(kioskModeApps);
deviceConfiguration.kioskModeApps = kioskModeAppsList;
deviceConfiguration.nfcBlocked = true;
deviceConfiguration.passwordBlockFingerprintUnlock = true;
deviceConfiguration.passwordBlockTrustAgents = true;
deviceConfiguration.passwordExpirationDays = 6;
deviceConfiguration.passwordMinimumLength = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeScreenTimeout = 14;
deviceConfiguration.passwordPreviousPasswordBlockCount = 2;
deviceConfiguration.passwordSignInFailureCountBeforeFactoryReset = 12;
deviceConfiguration.passwordRequiredType = AndroidRequiredPasswordType.ALPHABETIC;
deviceConfiguration.passwordRequired = true;
deviceConfiguration.powerOffBlocked = true;
deviceConfiguration.factoryResetBlocked = true;
deviceConfiguration.screenCaptureBlocked = true;
deviceConfiguration.deviceSharingAllowed = true;
deviceConfiguration.storageBlockGoogleBackup = true;
deviceConfiguration.storageBlockRemovableStorage = true;
deviceConfiguration.storageRequireDeviceEncryption = true;
deviceConfiguration.storageRequireRemovableStorageEncryption = true;
deviceConfiguration.voiceAssistantBlocked = true;
deviceConfiguration.voiceDialingBlocked = true;
deviceConfiguration.webBrowserBlockPopups = true;
deviceConfiguration.webBrowserBlockAutofill = true;
deviceConfiguration.webBrowserBlockJavaScript = true;
deviceConfiguration.webBrowserBlocked = true;
deviceConfiguration.webBrowserCookieSettings = WebBrowserCookieSettings.BLOCK_ALWAYS;
deviceConfiguration.wiFiBlocked = true;
LinkedList<AppListItem> appsInstallAllowListList = new LinkedList<AppListItem>();
AppListItem appsInstallAllowList = new AppListItem();
appsInstallAllowList.name = "Name value";
appsInstallAllowList.publisher = "Publisher value";
appsInstallAllowList.appStoreUrl = "https://example.com/appStoreUrl/";
appsInstallAllowList.appId = "App Id value";
appsInstallAllowListList.add(appsInstallAllowList);
deviceConfiguration.appsInstallAllowList = appsInstallAllowListList;
LinkedList<AppListItem> appsLaunchBlockListList = new LinkedList<AppListItem>();
AppListItem appsLaunchBlockList = new AppListItem();
appsLaunchBlockList.name = "Name value";
appsLaunchBlockList.publisher = "Publisher value";
appsLaunchBlockList.appStoreUrl = "https://example.com/appStoreUrl/";
appsLaunchBlockList.appId = "App Id value";
appsLaunchBlockListList.add(appsLaunchBlockList);
deviceConfiguration.appsLaunchBlockList = appsLaunchBlockListList;
LinkedList<AppListItem> appsHideListList = new LinkedList<AppListItem>();
AppListItem appsHideList = new AppListItem();
appsHideList.name = "Name value";
appsHideList.publisher = "Publisher value";
appsHideList.appStoreUrl = "https://example.com/appStoreUrl/";
appsHideList.appId = "App Id value";
appsHideListList.add(appsHideList);
deviceConfiguration.appsHideList = appsHideListList;
deviceConfiguration.securityRequireVerifyApps = true;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```