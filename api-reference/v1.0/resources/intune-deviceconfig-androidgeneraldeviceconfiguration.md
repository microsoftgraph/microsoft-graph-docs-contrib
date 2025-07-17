---
title: "androidGeneralDeviceConfiguration resource type"
description: "This topic provides descriptions of the declared methods, properties and relationships exposed by the androidGeneralDeviceConfiguration resource."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# androidGeneralDeviceConfiguration resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This topic provides descriptions of the declared methods, properties and relationships exposed by the androidGeneralDeviceConfiguration resource.


Inherits from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidGeneralDeviceConfigurations](../api/intune-deviceconfig-androidgeneraldeviceconfiguration-list.md)|[androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md) collection|List properties and relationships of the [androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md) objects.|
|[Get androidGeneralDeviceConfiguration](../api/intune-deviceconfig-androidgeneraldeviceconfiguration-get.md)|[androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md)|Read properties and relationships of the [androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md) object.|
|[Create androidGeneralDeviceConfiguration](../api/intune-deviceconfig-androidgeneraldeviceconfiguration-create.md)|[androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md)|Create a new [androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md) object.|
|[Delete androidGeneralDeviceConfiguration](../api/intune-deviceconfig-androidgeneraldeviceconfiguration-delete.md)|None|Deletes a [androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md).|
|[Update androidGeneralDeviceConfiguration](../api/intune-deviceconfig-androidgeneraldeviceconfiguration-update.md)|[androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md)|Update the properties of a [androidGeneralDeviceConfiguration](../resources/intune-deviceconfig-androidgeneraldeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|appsBlockClipboardSharing|Boolean|Indicates whether or not to block clipboard sharing to copy and paste between applications.|
|appsBlockCopyPaste|Boolean|Indicates whether or not to block copy and paste within applications.|
|appsBlockYouTube|Boolean|Indicates whether or not to block the YouTube app.|
|bluetoothBlocked|Boolean|Indicates whether or not to block Bluetooth.|
|cameraBlocked|Boolean|Indicates whether or not to block the use of the camera.|
|cellularBlockDataRoaming|Boolean|Indicates whether or not to block data roaming.|
|cellularBlockMessaging|Boolean|Indicates whether or not to block SMS/MMS messaging.|
|cellularBlockVoiceRoaming|Boolean|Indicates whether or not to block voice roaming.|
|cellularBlockWiFiTethering|Boolean|Indicates whether or not to block syncing Wi-Fi tethering.|
|compliantAppsList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.|
|compliantAppListType|[appListType](../resources/intune-deviceconfig-applisttype.md)|Type of list that is in the CompliantAppsList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|diagnosticDataBlockSubmission|Boolean|Indicates whether or not to block diagnostic data submission.|
|locationServicesBlocked|Boolean|Indicates whether or not to block location services.|
|googleAccountBlockAutoSync|Boolean|Indicates whether or not to block Google account auto sync.|
|googlePlayStoreBlocked|Boolean|Indicates whether or not to block the Google Play store.|
|kioskModeBlockSleepButton|Boolean|Indicates whether or not to block the screen sleep button while in Kiosk Mode.|
|kioskModeBlockVolumeButtons|Boolean|Indicates whether or not to block the volume buttons while in Kiosk Mode.|
|kioskModeApps|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|A list of apps that will be allowed to run when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.|
|nfcBlocked|Boolean|Indicates whether or not to block Near-Field Communication.|
|passwordBlockFingerprintUnlock|Boolean|Indicates whether or not to block fingerprint unlock.|
|passwordBlockTrustAgents|Boolean|Indicates whether or not to block Smart Lock and other trust agents.|
|passwordExpirationDays|Int32|Number of days before the password expires. Valid values 1 to 365|
|passwordMinimumLength|Int32|Minimum length of passwords. Valid values 4 to 16|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before the screen times out.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block. Valid values 0 to 24|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Number of sign in failures allowed before factory reset. Valid values 1 to 16|
|passwordRequiredType|[androidRequiredPasswordType](../resources/intune-deviceconfig-androidrequiredpasswordtype.md)|Type of password that is required. Possible values are: `deviceDefault`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `numeric`, `numericComplex`, `any`.|
|passwordRequired|Boolean|Indicates whether or not to require a password.|
|powerOffBlocked|Boolean|Indicates whether or not to block powering off the device.|
|factoryResetBlocked|Boolean|Indicates whether or not to block user performing a factory reset.|
|screenCaptureBlocked|Boolean|Indicates whether or not to block screenshots.|
|deviceSharingAllowed|Boolean|Indicates whether or not to allow device sharing mode.|
|storageBlockGoogleBackup|Boolean|Indicates whether or not to block Google Backup.|
|storageBlockRemovableStorage|Boolean|Indicates whether or not to block removable storage usage.|
|storageRequireDeviceEncryption|Boolean|Indicates whether or not to require device encryption.|
|storageRequireRemovableStorageEncryption|Boolean|Indicates whether or not to require removable storage encryption.|
|voiceAssistantBlocked|Boolean|Indicates whether or not to block the use of the Voice Assistant.|
|voiceDialingBlocked|Boolean|Indicates whether or not to block voice dialing.|
|webBrowserBlockPopups|Boolean|Indicates whether or not to block popups within the web browser.|
|webBrowserBlockAutofill|Boolean|Indicates whether or not to block the web browser's auto fill feature.|
|webBrowserBlockJavaScript|Boolean|Indicates whether or not to block JavaScript within the web browser.|
|webBrowserBlocked|Boolean|Indicates whether or not to block the web browser.|
|webBrowserCookieSettings|[webBrowserCookieSettings](../resources/intune-deviceconfig-webbrowsercookiesettings.md)|Cookie settings within the web browser. Possible values are: `browserDefault`, `blockAlways`, `allowCurrentWebSite`, `allowFromWebsitesVisited`, `allowAlways`.|
|wiFiBlocked|Boolean|Indicates whether or not to block syncing Wi-Fi.|
|appsInstallAllowList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps which can be installed on the KNOX device. This collection can contain a maximum of 500 elements.|
|appsLaunchBlockList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps which are blocked from being launched on the KNOX device. This collection can contain a maximum of 500 elements.|
|appsHideList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps to be hidden on the KNOX device. This collection can contain a maximum of 500 elements.|
|securityRequireVerifyApps|Boolean|Require the Android Verify apps feature is turned on.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidGeneralDeviceConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "appsBlockClipboardSharing": true,
  "appsBlockCopyPaste": true,
  "appsBlockYouTube": true,
  "bluetoothBlocked": true,
  "cameraBlocked": true,
  "cellularBlockDataRoaming": true,
  "cellularBlockMessaging": true,
  "cellularBlockVoiceRoaming": true,
  "cellularBlockWiFiTethering": true,
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "compliantAppListType": "String",
  "diagnosticDataBlockSubmission": true,
  "locationServicesBlocked": true,
  "googleAccountBlockAutoSync": true,
  "googlePlayStoreBlocked": true,
  "kioskModeBlockSleepButton": true,
  "kioskModeBlockVolumeButtons": true,
  "kioskModeApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "nfcBlocked": true,
  "passwordBlockFingerprintUnlock": true,
  "passwordBlockTrustAgents": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "passwordRequiredType": "String",
  "passwordRequired": true,
  "powerOffBlocked": true,
  "factoryResetBlocked": true,
  "screenCaptureBlocked": true,
  "deviceSharingAllowed": true,
  "storageBlockGoogleBackup": true,
  "storageBlockRemovableStorage": true,
  "storageRequireDeviceEncryption": true,
  "storageRequireRemovableStorageEncryption": true,
  "voiceAssistantBlocked": true,
  "voiceDialingBlocked": true,
  "webBrowserBlockPopups": true,
  "webBrowserBlockAutofill": true,
  "webBrowserBlockJavaScript": true,
  "webBrowserBlocked": true,
  "webBrowserCookieSettings": "String",
  "wiFiBlocked": true,
  "appsInstallAllowList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "appsLaunchBlockList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "appsHideList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "securityRequireVerifyApps": true
}
```
