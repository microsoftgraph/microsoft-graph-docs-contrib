---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosManagedAppProtection iosManagedAppProtection = new IosManagedAppProtection();
iosManagedAppProtection.setOdataType("#microsoft.graph.iosManagedAppProtection");
iosManagedAppProtection.setDisplayName("Display Name value");
iosManagedAppProtection.setDescription("Description value");
iosManagedAppProtection.setVersion("Version value");
PeriodAndDuration periodOfflineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("-PT17.1357909S"));
iosManagedAppProtection.setPeriodOfflineBeforeAccessCheck(periodOfflineBeforeAccessCheck);
PeriodAndDuration periodOnlineBeforeAccessCheck = PeriodAndDuration.ofDuration(Duration.parse("PT35.0018757S"));
iosManagedAppProtection.setPeriodOnlineBeforeAccessCheck(periodOnlineBeforeAccessCheck);
iosManagedAppProtection.setAllowedInboundDataTransferSources(ManagedAppDataTransferLevel.ManagedApps);
iosManagedAppProtection.setAllowedOutboundDataTransferDestinations(ManagedAppDataTransferLevel.ManagedApps);
iosManagedAppProtection.setOrganizationalCredentialsRequired(true);
iosManagedAppProtection.setAllowedOutboundClipboardSharingLevel(ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn);
iosManagedAppProtection.setDataBackupBlocked(true);
iosManagedAppProtection.setDeviceComplianceRequired(true);
iosManagedAppProtection.setManagedBrowserToOpenLinksRequired(true);
iosManagedAppProtection.setSaveAsBlocked(true);
PeriodAndDuration periodOfflineBeforeWipeIsEnforced = PeriodAndDuration.ofDuration(Duration.parse("-PT3M22.1587532S"));
iosManagedAppProtection.setPeriodOfflineBeforeWipeIsEnforced(periodOfflineBeforeWipeIsEnforced);
iosManagedAppProtection.setPinRequired(true);
iosManagedAppProtection.setMaximumPinRetries(1);
iosManagedAppProtection.setSimplePinBlocked(true);
iosManagedAppProtection.setMinimumPinLength(0);
iosManagedAppProtection.setPinCharacterSet(ManagedAppPinCharacterSet.AlphanumericAndSymbol);
PeriodAndDuration periodBeforePinReset = PeriodAndDuration.ofDuration(Duration.parse("PT3M29.6631862S"));
iosManagedAppProtection.setPeriodBeforePinReset(periodBeforePinReset);
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocations = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocations.add(ManagedAppDataStorageLocation.SharePoint);
iosManagedAppProtection.setAllowedDataStorageLocations(allowedDataStorageLocations);
iosManagedAppProtection.setContactSyncBlocked(true);
iosManagedAppProtection.setPrintBlocked(true);
iosManagedAppProtection.setFingerprintBlocked(true);
iosManagedAppProtection.setDisableAppPinIfDevicePinIsSet(true);
iosManagedAppProtection.setMinimumRequiredOsVersion("Minimum Required Os Version value");
iosManagedAppProtection.setMinimumWarningOsVersion("Minimum Warning Os Version value");
iosManagedAppProtection.setMinimumRequiredAppVersion("Minimum Required App Version value");
iosManagedAppProtection.setMinimumWarningAppVersion("Minimum Warning App Version value");
iosManagedAppProtection.setManagedBrowser(EnumSet.of(ManagedBrowserType.MicrosoftEdge));
iosManagedAppProtection.setIsAssigned(true);
iosManagedAppProtection.setAppDataEncryptionType(ManagedAppDataEncryptionType.AfterDeviceRestart);
iosManagedAppProtection.setMinimumRequiredSdkVersion("Minimum Required Sdk Version value");
iosManagedAppProtection.setDeployedAppCount(0);
iosManagedAppProtection.setFaceIdBlocked(true);
iosManagedAppProtection.setCustomBrowserProtocol("Custom Browser Protocol value");
IosManagedAppProtection result = graphClient.deviceAppManagement().iosManagedAppProtections().post(iosManagedAppProtection);


```