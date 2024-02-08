---
author: "Datar89"
description: "Represents an object that expose information about the administrative units associated to a call participant."
title: "administrativeUnitInfo resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# participantBase resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an object that expose information about the administrative units associated to a call [participantBase](callrecords-participantbase.md).

## Properties

| Property | Type   | Description                                    |
|:---------|:-------|------------------------------------------------|
| id       | String | Unique identifier for the administrative unit. |

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
