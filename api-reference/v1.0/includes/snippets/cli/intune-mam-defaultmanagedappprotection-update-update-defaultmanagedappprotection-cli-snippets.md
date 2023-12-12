---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management default-managed-app-protections patch --default-managed-app-protection-id {defaultManagedAppProtection-id} --body '{\
  "@odata.type": "#microsoft.graph.defaultManagedAppProtection",\
  "displayName": "Display Name value",\
  "description": "Description value",\
  "version": "Version value",\
  "periodOfflineBeforeAccessCheck": "-PT17.1357909S",\
  "periodOnlineBeforeAccessCheck": "PT35.0018757S",\
  "allowedInboundDataTransferSources": "managedApps",\
  "allowedOutboundDataTransferDestinations": "managedApps",\
  "organizationalCredentialsRequired": true,\
  "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",\
  "dataBackupBlocked": true,\
  "deviceComplianceRequired": true,\
  "managedBrowserToOpenLinksRequired": true,\
  "saveAsBlocked": true,\
  "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",\
  "pinRequired": true,\
  "maximumPinRetries": 1,\
  "simplePinBlocked": true,\
  "minimumPinLength": 0,\
  "pinCharacterSet": "alphanumericAndSymbol",\
  "periodBeforePinReset": "PT3M29.6631862S",\
  "allowedDataStorageLocations": [\
    "sharePoint"\
  ],\
  "contactSyncBlocked": true,\
  "printBlocked": true,\
  "fingerprintBlocked": true,\
  "disableAppPinIfDevicePinIsSet": true,\
  "minimumRequiredOsVersion": "Minimum Required Os Version value",\
  "minimumWarningOsVersion": "Minimum Warning Os Version value",\
  "minimumRequiredAppVersion": "Minimum Required App Version value",\
  "minimumWarningAppVersion": "Minimum Warning App Version value",\
  "managedBrowser": "microsoftEdge",\
  "appDataEncryptionType": "afterDeviceRestart",\
  "screenCaptureBlocked": true,\
  "encryptAppData": true,\
  "disableAppEncryptionIfDeviceEncryptionIsEnabled": true,\
  "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",\
  "customSettings": [\
    {\
      "@odata.type": "microsoft.graph.keyValuePair",\
      "name": "Name value",\
      "value": "Value value"\
    }\
  ],\
  "deployedAppCount": 0,\
  "minimumRequiredPatchVersion": "Minimum Required Patch Version value",\
  "minimumWarningPatchVersion": "Minimum Warning Patch Version value",\
  "faceIdBlocked": true\
}\
'

```