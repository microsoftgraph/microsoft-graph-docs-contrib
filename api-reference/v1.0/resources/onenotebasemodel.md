---
title: "onenoteEntityBaseModel resource type"
description: "This is the base type for OneNote entities."
author: "jewan-microsoft"
ms.localizationpriority: medium
ms.subservice: "onenote"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# onenoteEntityBaseModel resource type

Namespace: microsoft.graph

This is the base type for OneNote entities.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|self|String|The endpoint where you can get details about the page. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "abstract": true,
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [
    "self"
  ],
  "@odata.type": "microsoft.graph.onenoteEntityBaseModel"
}-->

```json
{
  "self": "string"
}

```
<!-- uuid: bfb567de-2a2a-4b81-bf47-a55626a0c166
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

