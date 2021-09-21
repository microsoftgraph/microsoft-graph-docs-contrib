---
title: "educationExternalResource resource type"
description: "A subclass of educationResource. This is a resource which is not exposed to Graph callers yet."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: resourcePageType
---

# educationExternalResource resource type

Namespace: microsoft.graph

A subclass of [educationResource](educationresource.md). This is a resource which is not exposed to Graph callers yet.

An educationResource cannot be added, updated or deleted with this resource type. 

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|webUrl|String|Location of the resource. Required|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.educationExternalResource"
}-->

```json
{
  "webUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-09-21 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationExternalResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
