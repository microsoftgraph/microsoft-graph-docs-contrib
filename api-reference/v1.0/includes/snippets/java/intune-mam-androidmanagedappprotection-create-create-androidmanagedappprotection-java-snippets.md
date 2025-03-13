---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AndroidManagedAppProtection androidManagedAppProtection = new AndroidManagedAppProtection();
androidManagedAppProtection.setOdataType("#microsoft.graph.androidManagedAppProtection");
androidManagedAppProtection.setDisplayName("Display Name value");
androidManagedAppProtection.setDescription("Description value");
androidManagedAppProtection.setVersion("Version value");
PeriodAndDuration periodOfflineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("-PT17.1357909S"));
androidManagedAppProtection.setPeriodOfflineBeforeAccessCheck(periodOfflineBeforeAccessCheck);
PeriodAndDuration periodOnlineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("PT35.0018757S"));
androidManagedAppProtection.setPeriodOnlineBeforeAccessCheck(periodOnlineBeforeAccessCheck);
androidManagedAppProtection.setAllowedInboundDataTransferSources(ManagedAppDataTransferLevel.ManagedApps);
androidManagedAppProtection.setAllowedOutboundDataTransferDestinations(ManagedAppDataTransferLevel.ManagedApps);
androidManagedAppProtection.setOrganizationalCredentialsRequired(true);
androidManagedAppProtection.setAllowedOutboundClipboardSharingLevel(ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn);
androidManagedAppProtection.setDataBackupBlocked(true);
androidManagedAppProtection.setDeviceComplianceRequired(true);
androidManagedAppProtection.setManagedBrowserToOpenLinksRequired(true);
androidManagedAppProtection.setSaveAsBlocked(true);
PeriodAndDuration periodOfflineBeforeWipeIsEnforced = PeriodAndDuration.ofDuration(Duration.parse("-PT3M22.1587532S"));
androidManagedAppProtection.setPeriodOfflineBeforeWipeIsEnforced(periodOfflineBeforeWipeIsEnforced);
androidManagedAppProtection.setPinRequired(true);
androidManagedAppProtection.setMaximumPinRetries(1);
androidManagedAppProtection.setSimplePinBlocked(true);
androidManagedAppProtection.setMinimumPinLength(0);
androidManagedAppProtection.setPinCharacterSet(ManagedAppPinCharacterSet.AlphanumericAndSymbol);
PeriodAndDuration periodBeforePinReset = PeriodAndDuration.ofDuration(Duration.parse("PT3M29.6631862S"));
androidManagedAppProtection.setPeriodBeforePinReset(periodBeforePinReset);
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocations = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocations.add(ManagedAppDataStorageLocation.SharePoint);
androidManagedAppProtection.setAllowedDataStorageLocations(allowedDataStorageLocations);
androidManagedAppProtection.setContactSyncBlocked(true);
androidManagedAppProtection.setPrintBlocked(true);
androidManagedAppProtection.setFingerprintBlocked(true);
androidManagedAppProtection.setDisableAppPinIfDevicePinIsSet(true);
androidManagedAppProtection.setMinimumRequiredOsVersion("Minimum Required Os Version value");
androidManagedAppProtection.setMinimumWarningOsVersion("Minimum Warning Os Version value");
androidManagedAppProtection.setMinimumRequiredAppVersion("Minimum Required App Version value");
androidManagedAppProtection.setMinimumWarningAppVersion("Minimum Warning App Version value");
androidManagedAppProtection.setManagedBrowser(EnumSet.of(ManagedBrowserType.MicrosoftEdge));
androidManagedAppProtection.setIsAssigned(true);
androidManagedAppProtection.setScreenCaptureBlocked(true);
androidManagedAppProtection.setDisableAppEncryptionIfDeviceEncryptionIsEnabled(true);
androidManagedAppProtection.setEncryptAppData(true);
androidManagedAppProtection.setDeployedAppCount(0);
androidManagedAppProtection.setMinimumRequiredPatchVersion("Minimum Required Patch Version value");
androidManagedAppProtection.setMinimumWarningPatchVersion("Minimum Warning Patch Version value");
androidManagedAppProtection.setCustomBrowserPackageId("Custom Browser Package Id value");
androidManagedAppProtection.setCustomBrowserDisplayName("Custom Browser Display Name value");
AndroidManagedAppProtection result = graphClient.deviceAppManagement().androidManagedAppProtections().post(androidManagedAppProtection);


```