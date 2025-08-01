---
title: "administrativeUnitInfo resource type"
description: "Represents the administrative units associated with a call participant."
author: "mcm223"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/12/2024
---

# administrativeUnitInfo resource type

Namespace: microsoft.graph.callRecords

Represents the administrative units associated with a [participant object](callrecords-participantbase.md).

## Properties

| Property | Type   | Description                                    |
|:---------|:-------|------------------------------------------------|
| id       | String | Unique identifier for the administrative unit. |

## Methods

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.administrativeUnitInfo",
  "optionalProperties": [
    "id",
  ],
  "openType": false
} -->
```json
{
  "id": "String (identifier)"
}
```

## See also

For more information on administrative units, see [administrativeUnit resource type](administrativeUnit.md).
