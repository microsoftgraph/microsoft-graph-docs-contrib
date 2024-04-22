---
title: "syncPayloadsActionResult resource type"
description: "SyncPayloadsActionResult represents the result of executing the SyncPayloads action on tracking the live reporting data for this policy or app regarding its removal or restoration process"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# syncPayloadsActionResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

SyncPayloadsActionResult represents the result of executing the SyncPayloads action on tracking the live reporting data for this policy or app regarding its removal or restoration process


Inherits from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionName|String|Action name Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|State of the action Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md). Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|deviceActionPayloads|[deviceActionPayload](../resources/intune-devices-deviceactionpayload.md) collection|Indicates the list of policies or apps to report live results during their syncPayloads action execution process. The result for each individual policy or app can contain whether it's being removed or restored, what's the current status with potential details or error code, and when any changes happen on it. Read only. This collection can contain a maximum of 30 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.syncPayloadsActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.syncPayloadsActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "deviceActionPayloads": [
    {
      "@odata.type": "microsoft.graph.deviceActionPayload",
      "payloadId": "String",
      "payloadType": "String",
      "displayName": "String",
      "intent": "String",
      "status": "String",
      "detail": "String",
      "errorCode": 1024,
      "lastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```