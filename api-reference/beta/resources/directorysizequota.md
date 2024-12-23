---
title: "directorySizeQuota resource type"
description: "Represents the used and total directory quota for an organization."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "suawat"
ms.date: 10/04/2024
---

# directorySizeQuota resource type

Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the used and total directory quota for an [organization](organization.md).

## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|total|Int32| Total amount of the directory quota.|
|used|Int32| Used amount of the directory quota. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySizeQuota"
}-->

```json
{
  "total": "Int32",
  "used": "Int32"
}
```
