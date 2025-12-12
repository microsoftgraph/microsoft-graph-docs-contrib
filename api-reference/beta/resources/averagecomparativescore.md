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

Contains tenant-level scores for [Microsoft Secure Score](../resources/securescore.md) based on scopes such as average by industry vertical and average by company seat size, and on control categories like identity, data, device, apps, and infrastructure.

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


