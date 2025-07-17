---
title: "educationCategory resource type"
description: "A category that can be applied to assignments."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Category
ms.date: 08/08/2024
---

# educationCategory resource type

Namespace: microsoft.graph

A category that can be applied to assignments.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/educationclass-post-category.md) | [educationCategory](educationcategory.md) | Create a new **educationCategory**.|
|[Get](../api/educationcategory-get.md) | [educationCategory](educationcategory.md) | Get an existing **educationCategory**.|
|[Delete](../api/educationcategory-delete.md) | None | Remove an **educationCategory**.|
|[Get delta](../api/educationcategory-delta.md)|[educationCategory](../resources/educationcategory.md) collection|Get a list of newly created or updated **educationCategory** objects without having to perform a full read of the collection.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Unique identifier for the category.|
|id|String|Unique identifier for the category.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationCategory"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)"
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


