---
title: "cloudPcRemoteActionResult resource type"
description: "Represents a remote action result specified by a Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/25/2024
---

# cloudPcRemoteActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a remote action result specified by a Cloud PC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve remote action results](../api/cloudpc-retrievecloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md) collection|Retrieve [remote action results](../resources/cloudpcremoteactionresult.md) and check the status of a specific remote action performed on the associated Cloud PC device.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionName|String|The specified action. Supported values in the Microsoft Endpoint Manager portal are: `Reprovision`, `Resize`, `Restore`. Supported values in enterprise Cloud PC devices are: `Reboot`, `Rename`, `Reprovision`, `Troubleshoot`.|
|actionState|[actionState](#actionstate-values)|State of the action. The possible values are: `None`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`. Read-only.|
|cloudPcId|String|The ID of the Cloud PC device on which the remote action is performed. Read-only.|
|managedDeviceId|String|The ID of the Intune managed device on which the remote action is performed. Read-only.|
|startDateTime|DateTimeOffset|Time the action was initiated. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|lastUpdatedDateTime|DateTimeOffset|Last update time for action. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|statusDetail|[cloudPcStatusDetail](../resources/cloudpcstatusdetail.md)|The extended details of the action status, including error code, error message, and additional information. For example, `"statusDetail": {"code": "internalServerError","message": "There was an internal server error. Please contact support xxx.","additionalInformation": [ { "@odata.type":"microsoft.graph.keyValuePair","name": "correlationId","value": "52367774-cfb7-4e9c-ab51-1b864c31f2d1"} ]}` |
|statusDetails (deprecated)|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the Cloud PC status. This property is deprecated and will no longer be supported effective August 31, 2024. Use statusDetail instead. |


### actionState values

|Member|Description|
|:---|:---|
|none|Not a valid action state.|
|pending|The action is pending.|
|canceled|The action is canceled.|
|active|The action is active.|
|done|The action completed without errors.|
|failed|The action failed.|
|notSupported|The action isn't supported.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRemoteActionResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRemoteActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "cloudPcId": "String",
  "managedDeviceId": "String",
  "statusDetails": {
    "@odata.type": "microsoft.graph.cloudPcStatusDetails"
  },
  "statusDetail": {
    "@odata.type": "microsoft.graph.cloudPcStatusDetail"
  }
}
```
