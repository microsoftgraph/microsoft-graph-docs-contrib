---
title: "managedDeviceSummarizedAppState resource type"
description: "Event representing a user's devices with failed or pending apps."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# managedDeviceSummarizedAppState resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Event representing a user's devices with failed or pending apps.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|summarizedAppState|[runState](../resources/intune-troubleshooting-runstate.md)|runState for the object. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|deviceId|String|DeviceId of device represented by this object|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceSummarizedAppState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceSummarizedAppState",
  "summarizedAppState": "String",
  "deviceId": "String"
}
```




