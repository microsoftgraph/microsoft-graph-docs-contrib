---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidManagedAppProtection androidManagedAppProtection = new AndroidManagedAppProtection();
androidManagedAppProtection.displayName = "Display Name value";
androidManagedAppProtection.description = "Description value";
androidManagedAppProtection.version = "Version value";
androidManagedAppProtection.periodOfflineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("-PT17.1357909S");
androidManagedAppProtection.periodOnlineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("PT35.0018757S");
androidManagedAppProtection.allowedInboundDataTransferSources = ManagedAppDataTransferLevel.MANAGED_APPS;
androidManagedAppProtection.allowedOutboundDataTransferDestinations = ManagedAppDataTransferLevel.MANAGED_APPS;
androidManagedAppProtection.organizationalCredentialsRequired = true;
androidManagedAppProtection.allowedOutboundClipboardSharingLevel = ManagedAppClipboardSharingLevel.MANAGED_APPS_WITH_PASTE_IN;
androidManagedAppProtection.dataBackupBlocked = true;
androidManagedAppProtection.deviceComplianceRequired = true;
androidManagedAppProtection.managedBrowserToOpenLinksRequired = true;
androidManagedAppProtection.saveAsBlocked = true;
androidManagedAppProtection.periodOfflineBeforeWipeIsEnforced = DatatypeFactory.newInstance().newDuration("-PT3M22.1587532S");
androidManagedAppProtection.pinRequired = true;
androidManagedAppProtection.maximumPinRetries = 1;
androidManagedAppProtection.simplePinBlocked = true;
androidManagedAppProtection.minimumPinLength = 0;
androidManagedAppProtection.pinCharacterSet = ManagedAppPinCharacterSet.ALPHANUMERIC_AND_SYMBOL;
androidManagedAppProtection.periodBeforePinReset = DatatypeFactory.newInstance().newDuration("PT3M29.6631862S");
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocationsList = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocationsList.add(ManagedAppDataStorageLocation.SHARE_POINT);
androidManagedAppProtection.allowedDataStorageLocations = allowedDataStorageLocationsList;
androidManagedAppProtection.contactSyncBlocked = true;
androidManagedAppProtection.printBlocked = true;
androidManagedAppProtection.fingerprintBlocked = true;
androidManagedAppProtection.disableAppPinIfDevicePinIsSet = true;
androidManagedAppProtection.minimumRequiredOsVersion = "Minimum Required Os Version value";
androidManagedAppProtection.minimumWarningOsVersion = "Minimum Warning Os Version value";
androidManagedAppProtection.minimumRequiredAppVersion = "Minimum Required App Version value";
androidManagedAppProtection.minimumWarningAppVersion = "Minimum Warning App Version value";
androidManagedAppProtection.managedBrowser = EnumSet.of(ManagedBrowserType.MICROSOFT_EDGE);
androidManagedAppProtection.isAssigned = true;
androidManagedAppProtection.screenCaptureBlocked = true;
androidManagedAppProtection.disableAppEncryptionIfDeviceEncryptionIsEnabled = true;
androidManagedAppProtection.encryptAppData = true;
androidManagedAppProtection.deployedAppCount = 0;
androidManagedAppProtection.minimumRequiredPatchVersion = "Minimum Required Patch Version value";
androidManagedAppProtection.minimumWarningPatchVersion = "Minimum Warning Patch Version value";
androidManagedAppProtection.customBrowserPackageId = "Custom Browser Package Id value";
androidManagedAppProtection.customBrowserDisplayName = "Custom Browser Display Name value";

graphClient.deviceAppManagement().androidManagedAppProtections("{androidManagedAppProtectionId}")
	.buildRequest()
	.patch(androidManagedAppProtection);

```