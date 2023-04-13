---
title: "averageComparativeScore resource type"
description: "Contains various different scores based on different scopes."
ms.localizationpriority: medium
author: preetikr
ms.prod: security
doc_type: resourcePageType
---

#  averageComparativeScore resource type

Namespace: microsoft.graph

Contains various different scores based on different scopes (for example, average by industry vertical, average by company seat size, and so on) and control category (Identity, Data, Device, Apps, Infrastructure).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|averageScore|Double|Average score within specified basis.|
|basis|String|Scope type. The possible values are: `AllTenants`, `TotalSeats`, `IndustryTypes`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.averageComparativeScore"
}-->

```json
{
  "averageScore": "Double",
  "basis": "String"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "averageComparativeScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

