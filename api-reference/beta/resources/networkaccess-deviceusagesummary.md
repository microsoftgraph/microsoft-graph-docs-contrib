---
title: "deviceUsageSummary resource type"
description: "A summary for device usage."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# deviceUsageSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for device usage.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDeviceCount|Int32|The number of distinct device IDs between endDateTime and discoveryPivotDateTime.|
|inactiveDeviceCount|Int32|The number of distinct device IDs that weren't seen between endDateTime and discoveryPivotDateTime but were seen between discoveryPivotDateTime and startDateTime.|
|totalDeviceCount|Int32|The number of distinct device IDs between startDateTime and endDateTime.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.deviceUsageSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.deviceUsageSummary",
  "totalDeviceCount": "Integer",
  "activeDeviceCount": "Integer",
  "inactiveDeviceCount": "Integer"
}
```

