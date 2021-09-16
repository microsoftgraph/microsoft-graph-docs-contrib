---
title: "Create macOSGeneralDeviceConfiguration"
description: "Create a new macOSGeneralDeviceConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create macOSGeneralDeviceConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.macOSGeneralDeviceConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object.

The following table shows the properties that are required when you create the [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|roleScopeTagIds|String collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|supportsScopeTags|Boolean|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-devicemanagementapplicabilityruleosedition.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-devicemanagementapplicabilityruleosversion.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-devicemanagementapplicabilityruledevicemode.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|description|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|displayName|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|version|Int32|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|compliantAppsList|[appListItem](../resources/intune-applistitem.md) collection|**TODO: Add Description**|
|compliantAppListType|appListType|**TODO: Add Description**. The possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|emailInDomainSuffixes|String collection|**TODO: Add Description**|
|passwordBlockSimple|Boolean|**TODO: Add Description**|
|passwordExpirationDays|Int32|**TODO: Add Description**|
|passwordMinimumCharacterSetCount|Int32|**TODO: Add Description**|
|passwordMinimumLength|Int32|**TODO: Add Description**|
|passwordMinutesOfInactivityBeforeLock|Int32|**TODO: Add Description**|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|**TODO: Add Description**|
|passwordPreviousPasswordBlockCount|Int32|**TODO: Add Description**|
|passwordRequiredType|requiredPasswordType|**TODO: Add Description**. The possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordRequired|Boolean|**TODO: Add Description**|
|passwordMaximumAttemptCount|Int32|**TODO: Add Description**|
|passwordMinutesUntilFailedLoginReset|Int32|**TODO: Add Description**|
|keychainBlockCloudSync|Boolean|**TODO: Add Description**|
|airPrintBlocked|Boolean|**TODO: Add Description**|
|airPrintForceTrustedTLS|Boolean|**TODO: Add Description**|
|airPrintBlockiBeaconDiscovery|Boolean|**TODO: Add Description**|
|safariBlockAutofill|Boolean|**TODO: Add Description**|
|cameraBlocked|Boolean|**TODO: Add Description**|
|iTunesBlockMusicService|Boolean|**TODO: Add Description**|
|spotlightBlockInternetResults|Boolean|**TODO: Add Description**|
|keyboardBlockDictation|Boolean|**TODO: Add Description**|
|definitionLookupBlocked|Boolean|**TODO: Add Description**|
|appleWatchBlockAutoUnlock|Boolean|**TODO: Add Description**|
|iTunesBlockFileSharing|Boolean|**TODO: Add Description**|
|iCloudBlockDocumentSync|Boolean|**TODO: Add Description**|
|iCloudBlockMail|Boolean|**TODO: Add Description**|
|iCloudBlockAddressBook|Boolean|**TODO: Add Description**|
|iCloudBlockCalendar|Boolean|**TODO: Add Description**|
|iCloudBlockReminders|Boolean|**TODO: Add Description**|
|iCloudBlockBookmarks|Boolean|**TODO: Add Description**|
|iCloudBlockNotes|Boolean|**TODO: Add Description**|
|airDropBlocked|Boolean|**TODO: Add Description**|
|passwordBlockModification|Boolean|**TODO: Add Description**|
|passwordBlockFingerprintUnlock|Boolean|**TODO: Add Description**|
|passwordBlockAutoFill|Boolean|**TODO: Add Description**|
|passwordBlockProximityRequests|Boolean|**TODO: Add Description**|
|passwordBlockAirDropSharing|Boolean|**TODO: Add Description**|
|softwareUpdatesEnforcedDelayInDays|Int32|**TODO: Add Description**|
|updateDelayPolicy|macOSSoftwareUpdateDelayPolicy|**TODO: Add Description**. The possible values are: `none`, `delayOSUpdateVisibility`, `delayAppUpdateVisibility`.|
|contentCachingBlocked|Boolean|**TODO: Add Description**|
|iCloudBlockPhotoLibrary|Boolean|**TODO: Add Description**|
|screenCaptureBlocked|Boolean|**TODO: Add Description**|
|classroomAppBlockRemoteScreenObservation|Boolean|**TODO: Add Description**|
|classroomAppForceUnpromptedScreenObservation|Boolean|**TODO: Add Description**|
|classroomForceAutomaticallyJoinClasses|Boolean|**TODO: Add Description**|
|classroomForceRequestPermissionToLeaveClasses|Boolean|**TODO: Add Description**|
|classroomForceUnpromptedAppAndDeviceLock|Boolean|**TODO: Add Description**|
|iCloudBlockActivityContinuation|Boolean|**TODO: Add Description**|
|privacyAccessControls|[macOSPrivacyAccessControlItem](../resources/intune-macosprivacyaccesscontrolitem.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_macosgeneraldeviceconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.macOSGeneralDeviceConfiguration not found
Content-Type: application/json
Content-length: 3008

{
  "@odata.type": "#microsoft.graph.macOSGeneralDeviceConfiguration",
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


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.macOSGeneralDeviceConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.macOSGeneralDeviceConfiguration",
  "id": "24ab0686-0686-24ab-8606-ab248606ab24",
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

