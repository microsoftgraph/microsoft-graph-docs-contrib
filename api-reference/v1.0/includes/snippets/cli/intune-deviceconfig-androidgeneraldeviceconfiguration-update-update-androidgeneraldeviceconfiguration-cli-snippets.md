---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-configurations patch --device-configuration-id {deviceConfiguration-id} --body '{\
  "@odata.type": "#microsoft.graph.androidGeneralDeviceConfiguration",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "appsBlockClipboardSharing": true,\
  "appsBlockCopyPaste": true,\
  "appsBlockYouTube": true,\
  "bluetoothBlocked": true,\
  "cameraBlocked": true,\
  "cellularBlockDataRoaming": true,\
  "cellularBlockMessaging": true,\
  "cellularBlockVoiceRoaming": true,\
  "cellularBlockWiFiTethering": true,\
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
  "locationServicesBlocked": true,\
  "googleAccountBlockAutoSync": true,\
  "googlePlayStoreBlocked": true,\
  "kioskModeBlockSleepButton": true,\
  "kioskModeBlockVolumeButtons": true,\
  "kioskModeApps": [\
    {\
      "@odata.type": "microsoft.graph.appListItem",\
      "name": "Name value",\
      "publisher": "Publisher value",\
      "appStoreUrl": "https://example.com/appStoreUrl/",\
      "appId": "App Id value"\
    }\
  ],\
  "nfcBlocked": true,\
  "passwordBlockFingerprintUnlock": true,\
  "passwordBlockTrustAgents": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordSignInFailureCountBeforeFactoryReset": 12,\
  "passwordRequiredType": "alphabetic",\
  "passwordRequired": true,\
  "powerOffBlocked": true,\
  "factoryResetBlocked": true,\
  "screenCaptureBlocked": true,\
  "deviceSharingAllowed": true,\
  "storageBlockGoogleBackup": true,\
  "storageBlockRemovableStorage": true,\
  "storageRequireDeviceEncryption": true,\
  "storageRequireRemovableStorageEncryption": true,\
  "voiceAssistantBlocked": true,\
  "voiceDialingBlocked": true,\
  "webBrowserBlockPopups": true,\
  "webBrowserBlockAutofill": true,\
  "webBrowserBlockJavaScript": true,\
  "webBrowserBlocked": true,\
  "webBrowserCookieSettings": "blockAlways",\
  "wiFiBlocked": true,\
  "appsInstallAllowList": [\
    {\
      "@odata.type": "microsoft.graph.appListItem",\
      "name": "Name value",\
      "publisher": "Publisher value",\
      "appStoreUrl": "https://example.com/appStoreUrl/",\
      "appId": "App Id value"\
    }\
  ],\
  "appsLaunchBlockList": [\
    {\
      "@odata.type": "microsoft.graph.appListItem",\
      "name": "Name value",\
      "publisher": "Publisher value",\
      "appStoreUrl": "https://example.com/appStoreUrl/",\
      "appId": "App Id value"\
    }\
  ],\
  "appsHideList": [\
    {\
      "@odata.type": "microsoft.graph.appListItem",\
      "name": "Name value",\
      "publisher": "Publisher value",\
      "appStoreUrl": "https://example.com/appStoreUrl/",\
      "appId": "App Id value"\
    }\
  ],\
  "securityRequireVerifyApps": true\
}\
'

```