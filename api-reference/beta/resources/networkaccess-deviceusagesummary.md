---
title: "deviceUsageSummary resource type"
description: "A summary for device usage."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# deviceUsageSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for device usage.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDeviceCount|Int32|The number of distinct device IDs between the discovery pivot time and the end of the reporting period.|
|inactiveDeviceCount|Int32|The discovery pivot time and the end of the reporting period, but were seen between the start of the reporting period and the discovery pivot time.|
|totalDeviceCount|Int32|The total number of distinct device IDs that were seen during the reporting period.|

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

