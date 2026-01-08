---
title: "averageComparativeScore resource type"
description: "Contains various different scores based on different scopes."
ms.localizationpriority: medium
author: preetikr
ms.subservice: security
doc_type: resourcePageType
ms.date: 07/22/2024
---

#  averageComparativeScore resource type

Namespace: microsoft.graph

Contains tenant-level scores for [Microsoft Secure Score](../resources/securescore.md) based on scopes such as average by industry vertical and average by company seat size, and on control categories like identity, data, device, apps, and infrastructure.

## Properties

|Property |Type |Description |
|:--|:--|:--|
|averageScore|Double|Average score within specified basis.|
|basis|String|Scope type. The possible values are: `AllTenants`, `TotalSeats`, `IndustryTypes`.|

## JSON representation

The following JSON representation shows the resource type.

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

