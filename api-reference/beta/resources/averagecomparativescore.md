---
title: " averageComparativeScore resource type"
description: "Contains various different scores based by different scopes and control category."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: security
author: "preetikr"
ms.date: 03/21/2024
---

#  averageComparativeScore resource type

Namespace: microsoft.graph

Contains various scores based on different scopes - such as average by industry vertical or company size - and control category (Identity, Data, Device, Apps, Infrastructure).

## Properties
| Property      | Type      | Description |
|:--------------|:----------|:------------|
| basis	        | String	| Scope type (by AllTenants, TotalSeats, IndustryTypes). |
| averageScore	| Double	| Average score within a specified basis. |
| deviceScore	| Double	| Average score within a specified basis. |
| dataScore		| Double	| Average score within a specified basis. |
| identityScore	| Double	| Average score within a specified basis. |

## Relationships
None.

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
  "basis": "String",
  "averageScore": "Double",
  "deviceScore": "Double",
  "dataScore": "Double",
  "identityScore": "Double"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "averageComparativeScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


