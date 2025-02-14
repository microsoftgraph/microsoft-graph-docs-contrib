---
author: "vanshisingh"
title: "recycleBin resource type"
description: "Provides a list of recycleBinItems."
ms.localizationpriority: "medium"
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 12/10/2024
---

# recycleBin resource type

Namespace: microsoft.graph

Represents a container for a collection of [recycleBinItem](recyclebinitem.md) resources in a SharePoint [site](site.md) or a SharePoint Embedded [fileStorageContainer](filestoragecontainer.md).

Inherits from [baseItem](baseitem.md).

## Methods

| Method                                                  | Return Type                                                 | Description                                                                              |
|:-----------------------------------|:------------------------------------|:--------------------------------------------------------|
| [List items](../api/recyclebin-list-items.md) | [recycleBinItem](../resources/recyclebinitem.md) collection |Get a collection of [recycleBinItem](../resources/recyclebinitem.md) resources in the [recycleBin](../resources/recyclebin.md) of the specified SharePoint [site](../resources/site.md). |

## Properties

| Property | Type   | Description                                                                                                              |
|:---------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
|id| String | The unique identifier for the **recycleBin** object. Returned only on `$select`. Inherited from [baseItem](baseitem.md). |

## Relationships

| Relationship | Type                                           | Description                                        |
|:-------------|:-----------------------------------------------|:---------------------------------------------------|
| items        | [recycleBinItem](recyclebinitem.md) collection | List of the **recycleBinItems** deleted by a user. |

## JSON Representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recycleBin",
  "baseType": "microsoft.graph.baseItem",
  "optionalProperties": []
}-->

```json
{
  "id": "String (identifier)",
}
```

<!-- {
"type": "#page.annotation",
"createdBy": "API Clinic",
"section": "documentation"
}-->
