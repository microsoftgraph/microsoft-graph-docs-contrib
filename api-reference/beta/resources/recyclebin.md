---
author: "vanshisingh"
title: "recycleBin resource type"
description: "Provides a list of recycleBinItems."
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---

# recycleBin resource type

Provides a list of [recycleBinItems](recyclebinitem.md).

## Methods

None.

## Properties

| Property | Type   | Description                                                                      |
|:---------|:-------|:---------------------------------------------------------------------------------|
| id       | String | The unique identifier for the **recycleBin** object. Returned only on `$select`. |


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
