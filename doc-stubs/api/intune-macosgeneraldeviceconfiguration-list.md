---
title: "List macOSGeneralDeviceConfigurations"
description: "Get a list of the macOSGeneralDeviceConfiguration objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List macOSGeneralDeviceConfigurations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [macOSGeneralDeviceConfiguration](../resources/intune-macosgeneraldeviceconfiguration.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.macOSGeneralDeviceConfiguration not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [macOSGeneralDeviceConfiguration](../resources/macosgeneraldeviceconfiguration.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_macosgeneraldeviceconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.macOSGeneralDeviceConfiguration not found
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.macOSGeneralDeviceConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

