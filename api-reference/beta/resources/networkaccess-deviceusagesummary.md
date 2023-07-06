---
title: "deviceUsageSummary resource type"
description: "A summary for total, active and inactive devices in a given time range."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# deviceUsageSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for total, active and inactive devices in a given time range that's returned by the [getDeviceUsageSummary](../api/networkaccess-reports-getdeviceusagesummary.md) method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDeviceCount|Int32|The number of distinct device IDs in the time frame between endDateTime and discoveryPivotDateTime.|
|inactiveDeviceCount|Int32|The number of distinct device IDs havn't seen in the time frame between endDateTime and discoveryPivotDateTime but have seen in the time frame between discoveryPivotDateTime and startDateTime.|
|totalDeviceCount|Int32|The number of distinct device IDs in the time frame between startDateTime and endDateTime.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

