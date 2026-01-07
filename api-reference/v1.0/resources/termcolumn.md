---
author: swapnil1993
title:  "termColumn resource type"
description: "Represents a managed metadata column in SharePoint."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 03/12/2024
---
# termColumn resource type

Namespace: microsoft.graph

Represents a managed metadata column in SharePoint.

## Properties

| Property | Type   | Description|
|:--------------|:-------|:----------------------------------------------------|
| allowMultipleValues | Boolean | Specifies whether the column allows more than one value.|
| showFullyQualifiedName | Boolean | Specifies whether to display the entire term path or only the term label.  |

## Relationships

| Relationship   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| parentTerm     | microsoft.graph.termStore.term | Specifies the parent term for which the child terms can be selected as the column value.
| termSet      | microsoft.graph.termStore.set | Term set whose children can be selected as column's value. 

## JSON representation

The following JSON representation shows the resource type.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.termColumn" } -->

```json
{
    "allowMultipleValues": true,
    "showFullyQualifiedName": false,
}
```

