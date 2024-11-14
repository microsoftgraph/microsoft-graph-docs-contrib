---
author: "vanshisingh"
title: "recycleBin resource type"
description: "Provides a list of recycleBinItems."
ms.localizationpriority: "medium"
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 11/14/2024
---

# recycleBin resource type

Namespace: microsoft.graph

Represents a container for a collection of [recycleBinItem](recyclebinitem.md) resources in a SharePoint [site](site.md) or a SharePoint Embedded [fileStorageContainer](filestoragecontainer.md).

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
