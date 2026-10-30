---
title: "solutionsRoot resource type"
description: "The entry point for cross-tenant migration APIs."
author: "rewood"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# solutionsRoot resource type

Namespace: microsoft.graph

The entry point for cross-tenant migration APIs.

All Microsoft Graph calls to resources under `/solutions` use the following service root URL:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/
```

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|migrations|[migrationsRoot](migrationsroot.md)|The entry point for cross-tenant migration operations.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.solutionsRoot"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.solutionsRoot"
}
```
