---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DefaultManagedAppProtection defaultManagedAppProtection = new DefaultManagedAppProtection();
defaultManagedAppProtection.displayName = "Display Name value";
defaultManagedAppProtection.description = "Description value";
defaultManagedAppProtection.version = "Version value";
defaultManagedAppProtection.periodOfflineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("-PT17.1357909S");
defaultManagedAppProtection.periodOnlineBeforeAccessCheck = DatatypeFactory.newInstance().newDuration("PT35.0018757S");
defaultManagedAppProtection.allowedInboundDataTransferSources = ManagedAppDataTransferLevel.MANAGED_APPS;
defaultManagedAppProtection.allowedOutboundDataTransferDestinations = ManagedAppDataTransferLevel.MANAGED_APPS;
defaultManagedAppProtection.organizationalCredentialsRequired = true;
defaultManagedAppProtection.allowedOutboundClipboardSharingLevel = ManagedAppClipboardSharingLevel.MANAGED_APPS_WITH_PASTE_IN;
defaultManagedAppProtection.dataBackupBlocked = true;
defaultManagedAppProtection.deviceComplianceRequired = true;
defaultManagedAppProtection.managedBrowserToOpenLinksRequired = true;
defaultManagedAppProtection.saveAsBlocked = true;
defaultManagedAppProtection.periodOfflineBeforeWipeIsEnforced = DatatypeFactory.newInstance().newDuration("-PT3M22.1587532S");
defaultManagedAppProtection.pinRequired = true;
defaultManagedAppProtection.maximumPinRetries = 1;
defaultManagedAppProtection.simplePinBlocked = true;
defaultManagedAppProtection.minimumPinLength = 0;
defaultManagedAppProtection.pinCharacterSet = ManagedAppPinCharacterSet.ALPHANUMERIC_AND_SYMBOL;
defaultManagedAppProtection.periodBeforePinReset = DatatypeFactory.newInstance().newDuration("PT3M29.6631862S");
LinkedList<ManagedAppDataStorageLocation> allowedDataStorageLocationsList = new LinkedList<ManagedAppDataStorageLocation>();
allowedDataStorageLocationsList.add(ManagedAppDataStorageLocation.SHARE_POINT);
defaultManagedAppProtection.allowedDataStorageLocations = allowedDataStorageLocationsList;
defaultManagedAppProtection.contactSyncBlocked = true;
defaultManagedAppProtection.printBlocked = true;
defaultManagedAppProtection.fingerprintBlocked = true;
defaultManagedAppProtection.disableAppPinIfDevicePinIsSet = true;
defaultManagedAppProtection.minimumRequiredOsVersion = "Minimum Required Os Version value";
defaultManagedAppProtection.minimumWarningOsVersion = "Minimum Warning Os Version value";
defaultManagedAppProtection.minimumRequiredAppVersion = "Minimum Required App Version value";
defaultManagedAppProtection.minimumWarningAppVersion = "Minimum Warning App Version value";
defaultManagedAppProtection.managedBrowser = EnumSet.of(ManagedBrowserType.MICROSOFT_EDGE);
defaultManagedAppProtection.appDataEncryptionType = ManagedAppDataEncryptionType.AFTER_DEVICE_RESTART;
defaultManagedAppProtection.screenCaptureBlocked = true;
defaultManagedAppProtection.encryptAppData = true;
defaultManagedAppProtection.disableAppEncryptionIfDeviceEncryptionIsEnabled = true;
defaultManagedAppProtection.minimumRequiredSdkVersion = "Minimum Required Sdk Version value";
LinkedList<KeyValuePair> customSettingsList = new LinkedList<KeyValuePair>();
KeyValuePair customSettings = new KeyValuePair();
customSettings.name = "Name value";
customSettings.value = "Value value";
customSettingsList.add(customSettings);
defaultManagedAppProtection.customSettings = customSettingsList;
defaultManagedAppProtection.deployedAppCount = 0;
defaultManagedAppProtection.minimumRequiredPatchVersion = "Minimum Required Patch Version value";
defaultManagedAppProtection.minimumWarningPatchVersion = "Minimum Warning Patch Version value";
defaultManagedAppProtection.faceIdBlocked = true;

graphClient.deviceAppManagement().defaultManagedAppProtections()
	.buildRequest()
	.post(defaultManagedAppProtection);

```