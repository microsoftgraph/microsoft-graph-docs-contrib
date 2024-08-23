---
author: swapnil1993
title: termColumn resource type
description: The termColumn resource indicates that the column's values contains taxonomy data.
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# termColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Indicates that the column's values contains taxonomy data.

## Properties

| Property               | Type                           | Description                                                               |
| :--------------------- | :----------------------------- | :------------------------------------------------------------------------ |
| allowMultipleValues    | Boolean                        | Specifies whether the column allows more than one value               |
| showFullyQualifiedName | Boolean                        | Specifies whether to display the entire term path or only the term label. |

## Relationships

| Relationship   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| parentTerm     | microsoft.graph.termStore.term | Specifies the parent term for which the child terms can be selected as the column value.
| termSet      | microsoft.graph.termStore.set | Termset whose children can be selected as column's value.

## JSON representation

Here's a JSON representation of a **termColumn** resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.termColumn" } -->

```json
{
    "allowMultipleValues": true,
    "showFullyQualifiedName": false,
}
```
