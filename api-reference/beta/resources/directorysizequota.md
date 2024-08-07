---
title: "directorySizeQuota resource type"
description: "Represents a company's used and total directory quota."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "suawat"
---

# directorySizeQuota resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [tenant's](organization.md) used and total directory quota.

## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|used|Int32| Used amount of the directory quota. |
|total|Int32| Total amount of the directory quota.|

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
  "used": "Int32",
  "total": "Int32"
}
```
