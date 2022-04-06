---
author: swapnil1993
title:  "termColumn resource type"
description: "The termColumn resource indicates that the column's values contains taxonomy data."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# termColumn resource type

Namespace: microsoft.graph

Represents a managed metadata column in SharePoint.

## Properties

| Property | Type   | Description|
|:--------------|:-------|:----------------------------------------------------|
| allowMultipleValues | Boolean | Specifies whether the column will allow more than one value.|
| showFullyQualifiedName | Boolean | Specifies whether to display the entire term path or only the term label.  |

## Relationships

| Relationship   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| parentTerm     | microsoft.graph.termStore.term | Specifies the parent term for which the child terms can be selected as the column value.
| termSet      | microsoft.graph.termStore.set | Termset whose children can be selected as column's value. 

## JSON representation

Here is a JSON representation of a **termColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.termColumn" } -->

```json
{
    "allowMultipleValues": true,
    "showFullyQualifiedName": false,
}
```

