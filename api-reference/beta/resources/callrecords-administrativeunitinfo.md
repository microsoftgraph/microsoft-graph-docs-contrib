---
title: "administrativeUnitInfo resource type"
description: "Represents an object that exposes information about the administrative units associated with a call participant."
author: "Datar89"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# administrativeUnitInfo resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an object that exposes information about the administrative units associated with a [participant](callrecords-participantbase.md).

## Properties

| Property | Type   | Description                                    |
|:---------|:-------|------------------------------------------------|
| id       | String | Unique identifier for the administrative unit. |

## Relationships
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
