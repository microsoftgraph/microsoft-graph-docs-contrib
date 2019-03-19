---
title: " averageComparativeScore resource type"
description: "This resource contains various different scores based by different scopes (for example, average by industry vertical, average by company seat size, and so on) and control category (Identity, Data, Device, Apps, Infrastructure)."
localization_priority: Normal
---

#  averageComparativeScore resource type

This resource contains various different scores based by different scopes (for example, average by industry vertical, average by company seat size, and so on) and control category (Identity, Data, Device, Apps, Infrastructure).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|basis|String|Scope type. The possible values are: `AllTenants`, `TotalSeats`, `IndustryTypes`.|
|averageScore|Double|Average score within specified basis.|

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
  "basis": "String",
  "averageScore": "Double"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "averageComparativeScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
