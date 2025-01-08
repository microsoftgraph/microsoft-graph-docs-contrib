---
author: spgraph-docs-team
description: The currencyColumn on a columnDefinition resource indicates that the column's values represent currency.
ms.date: 09/11/2017
title: CurrencyColumn
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# CurrencyColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **currencyColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values represent currency.

## Properties

| Property   | Type   | Description                                                   |
| :--------- | :----- | :------------------------------------------------------------ |
| **locale** | string | Specifies the locale from which to infer the currency symbol. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.currencyColumn" } -->

```json
{
  "locale": "en-us"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/CurrencyColumn",
  "suppressions": []
}
-->
