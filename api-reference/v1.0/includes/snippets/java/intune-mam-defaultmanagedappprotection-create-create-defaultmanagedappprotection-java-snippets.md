---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DefaultManagedAppProtection defaultManagedAppProtection = new DefaultManagedAppProtection();
defaultManagedAppProtection.setOdataType("#microsoft.graph.defaultManagedAppProtection");
defaultManagedAppProtection.setDisplayName("Display Name value");
defaultManagedAppProtection.setDescription("Description value");
defaultManagedAppProtection.setVersion("Version value");
PeriodAndDuration periodOfflineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("-PT17.1357909S"));
defaultManagedAppProtection.setPeriodOfflineBeforeAccessCheck(periodOfflineBeforeAccessCheck);
PeriodAndDuration periodOnlineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("PT35.0018757S"));
defaultManagedAppProtection.setPeriodOnlineBeforeAccessCheck(periodOnlineBeforeAccessCheck);
defaultManagedAppProtection.setAllowedInboundDataTransferSources(ManagedAppDataTransferLevel.ManagedApps);
defaultManagedAppProtection.setAllowedOutboundDataTransferDestinations(ManagedAppDataTransferLevel.ManagedApps);
defaultManagedAppProtection.setOrganizationalCredentialsRequired(true);
defaultManagedAppProtection.setAllowedOutboundClipboardSharingLevel(ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn);
defaultManagedAppProtection.setDataBackupBlocked(true);
defaultManagedAppProtection.setDeviceComplianceRequired(true);
defaultManagedAppProtection.setManagedBrowserToOpenLinksRequired(true);
defaultManagedAppProtection.setSaveAsBlocked(true);
PeriodAndDuration periodOfflineBeforeWipeIsEnforced = PeriodAndDuration.ofDuration(Duration.parse("-PT3M22.1587532S"));
defaultManagedAppProtection.setPeriodOfflineBeforeWipeIsEnforced(periodOfflineBeforeWipeIsEnforced);
defaultManagedAppProtection.setPinRequired(true);
defaultManagedAppProtection.setMaximumPinRetries(1);
defaultManagedAppProtection.setSimplePinBlocked(true);
defaultManagedAppProtection.setMinimumPinLength(0);
defaultManagedAppProtection.setPinCharacterSet(ManagedAppPinCharacterSet.AlphanumericAndSymbol);
PeriodAndDuration periodBeforePinReset = PeriodAndDuration.ofDuration(Duration.parse("PT3M29.6631862S"));
defaultManagedAppProtection.setPeriodBeforePinReset(periodBeforePinReset);
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocations = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocations.add(ManagedAppDataStorageLocation.SharePoint);
defaultManagedAppProtection.setAllowedDataStorageLocations(allowedDataStorageLocations);
defaultManagedAppProtection.setContactSyncBlocked(true);
defaultManagedAppProtection.setPrintBlocked(true);
defaultManagedAppProtection.setFingerprintBlocked(true);
defaultManagedAppProtection.setDisableAppPinIfDevicePinIsSet(true);
defaultManagedAppProtection.setMinimumRequiredOsVersion("Minimum Required Os Version value");
defaultManagedAppProtection.setMinimumWarningOsVersion("Minimum Warning Os Version value");
defaultManagedAppProtection.setMinimumRequiredAppVersion("Minimum Required App Version value");
defaultManagedAppProtection.setMinimumWarningAppVersion("Minimum Warning App Version value");
defaultManagedAppProtection.setManagedBrowser(EnumSet.of(ManagedBrowserType.MicrosoftEdge));
defaultManagedAppProtection.setAppDataEncryptionType(ManagedAppDataEncryptionType.AfterDeviceRestart);
defaultManagedAppProtection.setScreenCaptureBlocked(true);
defaultManagedAppProtection.setEncryptAppData(true);
defaultManagedAppProtection.setDisableAppEncryptionIfDeviceEncryptionIsEnabled(true);
defaultManagedAppProtection.setMinimumRequiredSdkVersion("Minimum Required Sdk Version value");
LinkedList<KeyValuePair> customSettings = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setOdataType("microsoft.graph.keyValuePair");
keyValuePair.setName("Name value");
keyValuePair.setValue("Value value");
customSettings.add(keyValuePair);
defaultManagedAppProtection.setCustomSettings(customSettings);
defaultManagedAppProtection.setDeployedAppCount(0);
defaultManagedAppProtection.setMinimumRequiredPatchVersion("Minimum Required Patch Version value");
defaultManagedAppProtection.setMinimumWarningPatchVersion("Minimum Warning Patch Version value");
defaultManagedAppProtection.setFaceIdBlocked(true);
DefaultManagedAppProtection result = graphClient.deviceAppManagement().defaultManagedAppProtections().post(defaultManagedAppProtection);


```