---
author: "vanshisingh"
title: "recycleBin resource type"
description: "Provides a list of recycleBinItems."
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# recycleBin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for a collection of [recycleBinItem](recyclebinitem.md) resources in a SharePoint [site](site.md).

Inherits from [baseItem](baseitem.md).

## Properties

| Property | Type   | Description                                                                                                              |
|:---------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
|id| String | The unique identifier for the **recycleBin** object. Returned only on `$select`. Inherited from [baseItem](baseitem.md). |

## Relationships

| Relationship | Type                                           | Description                                        |
|:-------------|:-----------------------------------------------|:---------------------------------------------------|
| items        | [recycleBinItem](recyclebinitem.md) collection | List of the **recycleBinItems** deleted by a user. |

## JSON Representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recycleBin",
  "baseType": "microsoft.graph.baseItem",
  "optionalProperties": []
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- {
"type": "#page.annotation",
"createdBy": "API Clinic",
"section": "documentation"
}-->
