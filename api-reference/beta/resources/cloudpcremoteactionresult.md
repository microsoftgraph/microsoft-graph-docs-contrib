---
title: "cloudPcRemoteActionResult resource type"
description: "The remote action result of reprovisioning a CloudPC in MEM."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRemoteActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The remote action result of reprovisioning a CloudPC in MEM.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[reprovisionCloudPc of managedDevice](../api/intune-manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with Intune managed device id in [managedDevice](../resources/intune-manageddevice.md).|
|[getCloudPcRemoteActionResults](../api/intune-manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the results of reprovisioning a Cloud PC.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionName|String|Executed action. Supported value: ‘reprovision’.|
|actionState|[actionState](#actionstate-values)|State of the action. Possible values are: `None`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`. Read-only.|
|cloudPcId|String|Cloud PC id.|
|managedDeviceId|String|Managed device id.|
|startDateTime|DateTimeOffset|Time the action was initiated. The Timestamp  is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|lastUpdatedDateTime|DateTimeOffset|Last update time for action. The Timestamp  is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcStatusDetails.md)|The details of the Cloud PC status. |

### actionState values

|Member|Description|
|:---|:---|
|none|Not a valid action state.|
|pending|Action is pending.|
|canceled|Action has been cancelled.|
|active|Action is active.|
|done|Action completed without errors.|
|failed|Action failed.|
|notSupported|Action is not supported.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  }
}
```
