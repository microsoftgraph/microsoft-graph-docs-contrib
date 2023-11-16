---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosManagedAppProtection iosManagedAppProtection = new IosManagedAppProtection();
iosManagedAppProtection.displayName = "Display Name value";
iosManagedAppProtection.description = "Description value";
iosManagedAppProtection.version = "Version value";
iosManagedAppProtection.periodOfflineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("-PT17.1357909S");
iosManagedAppProtection.periodOnlineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("PT35.0018757S");
iosManagedAppProtection.allowedInboundDataTransferSources = ManagedAppDataTransferLevel.MANAGED_APPS;
iosManagedAppProtection.allowedOutboundDataTransferDestinations = ManagedAppDataTransferLevel.MANAGED_APPS;
iosManagedAppProtection.organizationalCredentialsRequired = true;
iosManagedAppProtection.allowedOutboundClipboardSharingLevel = ManagedAppClipboardSharingLevel.MANAGED_APPS_WITH_PASTE_IN;
iosManagedAppProtection.dataBackupBlocked = true;
iosManagedAppProtection.deviceComplianceRequired = true;
iosManagedAppProtection.managedBrowserToOpenLinksRequired = true;
iosManagedAppProtection.saveAsBlocked = true;
iosManagedAppProtection.periodOfflineBeforeWipeIsEnforced = DatatypeFactory.newInstance().newDuration("-PT3M22.1587532S");
iosManagedAppProtection.pinRequired = true;
iosManagedAppProtection.maximumPinRetries = 1;
iosManagedAppProtection.simplePinBlocked = true;
iosManagedAppProtection.minimumPinLength = 0;
iosManagedAppProtection.pinCharacterSet = ManagedAppPinCharacterSet.ALPHANUMERIC_AND_SYMBOL;
iosManagedAppProtection.periodBeforePinReset = DatatypeFactory.newInstance().newDuration("PT3M29.6631862S");
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocationsList = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocationsList.add(ManagedAppDataStorageLocation.SHARE_POINT);
iosManagedAppProtection.allowedDataStorageLocations = allowedDataStorageLocationsList;
iosManagedAppProtection.contactSyncBlocked = true;
iosManagedAppProtection.printBlocked = true;
iosManagedAppProtection.fingerprintBlocked = true;
iosManagedAppProtection.disableAppPinIfDevicePinIsSet = true;
iosManagedAppProtection.minimumRequiredOsVersion = "Minimum Required Os Version value";
iosManagedAppProtection.minimumWarningOsVersion = "Minimum Warning Os Version value";
iosManagedAppProtection.minimumRequiredAppVersion = "Minimum Required App Version value";
iosManagedAppProtection.minimumWarningAppVersion = "Minimum Warning App Version value";
iosManagedAppProtection.managedBrowser = EnumSet.of(ManagedBrowserType.MICROSOFT_EDGE);
iosManagedAppProtection.isAssigned = true;
iosManagedAppProtection.appDataEncryptionType = ManagedAppDataEncryptionType.AFTER_DEVICE_RESTART;
iosManagedAppProtection.minimumRequiredSdkVersion = "Minimum Required Sdk Version value";
iosManagedAppProtection.deployedAppCount = 0;
iosManagedAppProtection.faceIdBlocked = true;
iosManagedAppProtection.customBrowserProtocol = "Custom Browser Protocol value";

graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}")
	.buildRequest()
	.patch(iosManagedAppProtection);

```