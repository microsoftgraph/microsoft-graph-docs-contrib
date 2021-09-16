---
title: "macOSGeneralDeviceConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# macOSGeneralDeviceConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [deviceConfiguration](../resources/intune-deviceconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List macOSGeneralDeviceConfigurations](../api/intune-macosgeneraldeviceconfiguration-list.md)|[macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) collection|Get a list of the [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) objects and their properties.|
|[Create macOSGeneralDeviceConfiguration](../api/intune-macosgeneraldeviceconfiguration-create.md)|[macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md)|Create a new [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.|
|[Get macOSGeneralDeviceConfiguration](../api/intune-macosgeneraldeviceconfiguration-get.md)|[macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md)|Read the properties and relationships of a [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.|
|[Update macOSGeneralDeviceConfiguration](../api/intune-macosgeneraldeviceconfiguration-update.md)|[macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md)|Update the properties of a [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.|
|[Delete macOSGeneralDeviceConfiguration](../api/intune-macosgeneraldeviceconfiguration-delete.md)|None|Deletes a [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|airDropBlocked|Boolean|**TODO: Add Description**|
|airPrintBlocked|Boolean|**TODO: Add Description**|
|airPrintBlockiBeaconDiscovery|Boolean|**TODO: Add Description**|
|airPrintForceTrustedTLS|Boolean|**TODO: Add Description**|
|appleWatchBlockAutoUnlock|Boolean|**TODO: Add Description**|
|cameraBlocked|Boolean|**TODO: Add Description**|
|classroomAppBlockRemoteScreenObservation|Boolean|**TODO: Add Description**|
|classroomAppForceUnpromptedScreenObservation|Boolean|**TODO: Add Description**|
|classroomForceAutomaticallyJoinClasses|Boolean|**TODO: Add Description**|
|classroomForceRequestPermissionToLeaveClasses|Boolean|**TODO: Add Description**|
|classroomForceUnpromptedAppAndDeviceLock|Boolean|**TODO: Add Description**|
|compliantAppListType|appListType|**TODO: Add Description**. The possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|compliantAppsList|[appListItem](../resources/intune-applistitem.md) collection|**TODO: Add Description**|
|contentCachingBlocked|Boolean|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|definitionLookupBlocked|Boolean|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-devicemanagementapplicabilityruledevicemode.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-devicemanagementapplicabilityruleosedition.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-devicemanagementapplicabilityruleosversion.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|displayName|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|emailInDomainSuffixes|String collection|**TODO: Add Description**|
|iCloudBlockActivityContinuation|Boolean|**TODO: Add Description**|
|iCloudBlockAddressBook|Boolean|**TODO: Add Description**|
|iCloudBlockBookmarks|Boolean|**TODO: Add Description**|
|iCloudBlockCalendar|Boolean|**TODO: Add Description**|
|iCloudBlockDocumentSync|Boolean|**TODO: Add Description**|
|iCloudBlockMail|Boolean|**TODO: Add Description**|
|iCloudBlockNotes|Boolean|**TODO: Add Description**|
|iCloudBlockPhotoLibrary|Boolean|**TODO: Add Description**|
|iCloudBlockReminders|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|iTunesBlockFileSharing|Boolean|**TODO: Add Description**|
|iTunesBlockMusicService|Boolean|**TODO: Add Description**|
|keyboardBlockDictation|Boolean|**TODO: Add Description**|
|keychainBlockCloudSync|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|passwordBlockAirDropSharing|Boolean|**TODO: Add Description**|
|passwordBlockAutoFill|Boolean|**TODO: Add Description**|
|passwordBlockFingerprintUnlock|Boolean|**TODO: Add Description**|
|passwordBlockModification|Boolean|**TODO: Add Description**|
|passwordBlockProximityRequests|Boolean|**TODO: Add Description**|
|passwordBlockSimple|Boolean|**TODO: Add Description**|
|passwordExpirationDays|Int32|**TODO: Add Description**|
|passwordMaximumAttemptCount|Int32|**TODO: Add Description**|
|passwordMinimumCharacterSetCount|Int32|**TODO: Add Description**|
|passwordMinimumLength|Int32|**TODO: Add Description**|
|passwordMinutesOfInactivityBeforeLock|Int32|**TODO: Add Description**|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|**TODO: Add Description**|
|passwordMinutesUntilFailedLoginReset|Int32|**TODO: Add Description**|
|passwordPreviousPasswordBlockCount|Int32|**TODO: Add Description**|
|passwordRequired|Boolean|**TODO: Add Description**|
|passwordRequiredType|requiredPasswordType|**TODO: Add Description**. The possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|privacyAccessControls|[macOSPrivacyAccessControlItem](../resources/intune-macosprivacyaccesscontrolitem.md) collection|**TODO: Add Description**|
|roleScopeTagIds|String collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|safariBlockAutofill|Boolean|**TODO: Add Description**|
|screenCaptureBlocked|Boolean|**TODO: Add Description**|
|softwareUpdatesEnforcedDelayInDays|Int32|**TODO: Add Description**|
|spotlightBlockInternetResults|Boolean|**TODO: Add Description**|
|supportsScopeTags|Boolean|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|
|updateDelayPolicy|macOSSoftwareUpdateDelayPolicy|**TODO: Add Description**. The possible values are: `none`, `delayOSUpdateVisibility`, `delayAppUpdateVisibility`.|
|version|Int32|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfigurationassignment.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-settingstatedevicesummary.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfigurationdevicestatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfigurationdeviceoverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfigurationgroupassignment.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfigurationuserstatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfigurationuseroverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSGeneralDeviceConfiguration",
  "baseType": "microsoft.graph.deviceConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": "Boolean",
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": "Integer",
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem"
    }
  ],
  "compliantAppListType": "String",
  "emailInDomainSuffixes": [
    "String"
  ],
  "passwordBlockSimple": "Boolean",
  "passwordExpirationDays": "Integer",
  "passwordMinimumCharacterSetCount": "Integer",
  "passwordMinimumLength": "Integer",
  "passwordMinutesOfInactivityBeforeLock": "Integer",
  "passwordMinutesOfInactivityBeforeScreenTimeout": "Integer",
  "passwordPreviousPasswordBlockCount": "Integer",
  "passwordRequiredType": "String",
  "passwordRequired": "Boolean",
  "passwordMaximumAttemptCount": "Integer",
  "passwordMinutesUntilFailedLoginReset": "Integer",
  "keychainBlockCloudSync": "Boolean",
  "airPrintBlocked": "Boolean",
  "airPrintForceTrustedTLS": "Boolean",
  "airPrintBlockiBeaconDiscovery": "Boolean",
  "safariBlockAutofill": "Boolean",
  "cameraBlocked": "Boolean",
  "iTunesBlockMusicService": "Boolean",
  "spotlightBlockInternetResults": "Boolean",
  "keyboardBlockDictation": "Boolean",
  "definitionLookupBlocked": "Boolean",
  "appleWatchBlockAutoUnlock": "Boolean",
  "iTunesBlockFileSharing": "Boolean",
  "iCloudBlockDocumentSync": "Boolean",
  "iCloudBlockMail": "Boolean",
  "iCloudBlockAddressBook": "Boolean",
  "iCloudBlockCalendar": "Boolean",
  "iCloudBlockReminders": "Boolean",
  "iCloudBlockBookmarks": "Boolean",
  "iCloudBlockNotes": "Boolean",
  "airDropBlocked": "Boolean",
  "passwordBlockModification": "Boolean",
  "passwordBlockFingerprintUnlock": "Boolean",
  "passwordBlockAutoFill": "Boolean",
  "passwordBlockProximityRequests": "Boolean",
  "passwordBlockAirDropSharing": "Boolean",
  "softwareUpdatesEnforcedDelayInDays": "Integer",
  "updateDelayPolicy": "String",
  "contentCachingBlocked": "Boolean",
  "iCloudBlockPhotoLibrary": "Boolean",
  "screenCaptureBlocked": "Boolean",
  "classroomAppBlockRemoteScreenObservation": "Boolean",
  "classroomAppForceUnpromptedScreenObservation": "Boolean",
  "classroomForceAutomaticallyJoinClasses": "Boolean",
  "classroomForceRequestPermissionToLeaveClasses": "Boolean",
  "classroomForceUnpromptedAppAndDeviceLock": "Boolean",
  "iCloudBlockActivityContinuation": "Boolean",
  "privacyAccessControls": [
    {
      "@odata.type": "microsoft.graph.macOSPrivacyAccessControlItem"
    }
  ]
}
```

