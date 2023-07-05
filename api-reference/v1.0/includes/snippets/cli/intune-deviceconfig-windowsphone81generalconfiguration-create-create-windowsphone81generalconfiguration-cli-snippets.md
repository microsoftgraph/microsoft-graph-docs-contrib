---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-configurations create --body '{\
  "@odata.type": "#microsoft.graph.windowsPhone81GeneralConfiguration",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "applyOnlyToWindowsPhone81": true,\
  "appsBlockCopyPaste": true,\
  "bluetoothBlocked": true,\
  "cameraBlocked": true,\
  "cellularBlockWifiTethering": true,\
  "compliantAppsList": [\
    {\
      "@odata.type": "microsoft.graph.appListItem",\
      "name": "Name value",\
      "publisher": "Publisher value",\
      "appStoreUrl": "https://example.com/appStoreUrl/",\
      "appId": "App Id value"\
    }\
  ],\
  "compliantAppListType": "appsInListCompliant",\
  "diagnosticDataBlockSubmission": true,\
  "emailBlockAddingAccounts": true,\
  "locationServicesBlocked": true,\
  "microsoftAccountBlocked": true,\
  "nfcBlocked": true,\
  "passwordBlockSimple": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordSignInFailureCountBeforeFactoryReset": 12,\
  "passwordRequiredType": "alphanumeric",\
  "passwordRequired": true,\
  "screenCaptureBlocked": true,\
  "storageBlockRemovableStorage": true,\
  "storageRequireEncryption": true,\
  "webBrowserBlocked": true,\
  "wifiBlocked": true,\
  "wifiBlockAutomaticConnectHotspots": true,\
  "wifiBlockHotspotReporting": true,\
  "windowsStoreBlocked": true\
}\
'

```