---
title: "educationCategory resource type"
description: "A category that can be applied to assignments."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A category that can be applied to assignments.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create category](../api/educationclass-post-category.md) | [educationCategory](educationcategory.md) | Create a new **educationCategory**.|
|[Get educationCategory](../api/educationcategory-get.md) | [educationCategory](educationcategory.md) | Get an existing **educationCategory**.|
|[Delete category](../api/educationcategory-delete.md) | None | Remove an **educationCategory**.|
|[Get delta](../api/educationcategory-delta.md)|[educationCategory](../resources/educationcategory.md) collection|Get a list of newly created or updated **educationCategory** without having to perform a full read of the collection.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|Unique identifier for the category.|
|displayName|String|Unique identifier for the category.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationCategory"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationCategory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
