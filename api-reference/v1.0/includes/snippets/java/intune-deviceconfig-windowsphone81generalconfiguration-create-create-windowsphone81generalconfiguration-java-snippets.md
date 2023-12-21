---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsPhone81GeneralConfiguration deviceConfiguration = new WindowsPhone81GeneralConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.applyOnlyToWindowsPhone81 = true;
deviceConfiguration.appsBlockCopyPaste = true;
deviceConfiguration.bluetoothBlocked = true;
deviceConfiguration.cameraBlocked = true;
deviceConfiguration.cellularBlockWifiTethering = true;
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
deviceConfiguration.emailBlockAddingAccounts = true;
deviceConfiguration.locationServicesBlocked = true;
deviceConfiguration.microsoftAccountBlocked = true;
deviceConfiguration.nfcBlocked = true;
deviceConfiguration.passwordBlockSimple = true;
deviceConfiguration.passwordExpirationDays = 6;
deviceConfiguration.passwordMinimumLength = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeScreenTimeout = 14;
deviceConfiguration.passwordMinimumCharacterSetCount = 0;
deviceConfiguration.passwordPreviousPasswordBlockCount = 2;
deviceConfiguration.passwordSignInFailureCountBeforeFactoryReset = 12;
deviceConfiguration.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceConfiguration.passwordRequired = true;
deviceConfiguration.screenCaptureBlocked = true;
deviceConfiguration.storageBlockRemovableStorage = true;
deviceConfiguration.storageRequireEncryption = true;
deviceConfiguration.webBrowserBlocked = true;
deviceConfiguration.wifiBlocked = true;
deviceConfiguration.wifiBlockAutomaticConnectHotspots = true;
deviceConfiguration.wifiBlockHotspotReporting = true;
deviceConfiguration.windowsStoreBlocked = true;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```