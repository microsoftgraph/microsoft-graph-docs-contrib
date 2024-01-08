---
title: "industryDataRunRoleCountMetric resource type"
description: "Represents a count of people in a given role."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataRunRoleCountMetric resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a count of people in a given role.

## Properties

| Property | Type   | Description                        |
| :------- | :----- | :--------------------------------- |
| count    | Int32  | The number of people in this role. |
| role     | String | The role that is being measured.   |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataRunRoleCountMetric"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunRoleCountMetric",
  "count": "Int32",
  "role": "String"
}
```
