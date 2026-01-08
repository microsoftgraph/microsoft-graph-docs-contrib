---
title: "macOsVppAppRevokeLicensesActionResult resource type"
description: "Defines results for actions on MacOS Vpp Apps, contains inherited properties for ActionResult."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOsVppAppRevokeLicensesActionResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defines results for actions on MacOS Vpp Apps, contains inherited properties for ActionResult.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|UserId associated with the action.|
|managedDeviceId|String|DeviceId associated with the action.|
|totalLicensesCount|Int32|A count of the number of licenses for which revoke was attempted.|
|failedLicensesCount|Int32|A count of the number of licenses for which revoke failed.|
|actionFailureReason|[vppTokenActionFailureReason](../resources/intune-shared-vpptokenactionfailurereason.md)|The reason for the revoke licenses action failure. The possible values are: `none`, `appleFailure`, `internalError`, `expiredVppToken`, `expiredApplePushNotificationCertificate`.|
|actionName|String|Action name|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|State of the action. The possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOsVppAppRevokeLicensesActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOsVppAppRevokeLicensesActionResult",
  "userId": "String",
  "managedDeviceId": "String",
  "totalLicensesCount": 1024,
  "failedLicensesCount": 1024,
  "actionFailureReason": "String",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```