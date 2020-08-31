---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/28/2020
title: TermColumn
description: "The termColumn resource indicates that the column's values contains taxonomy data."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# TermColumn resource type

The **termColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's values contains taxonomy data.

## JSON representation

Here is a JSON representation of a **termColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.termColumn" } -->

```json
{
    "allowMultipleValues": true,
    "parentTerm": { "@type": "microsoft.graph.termStore.term" },
    "showFullyQualifiedName": false,
    "termSet": { "@type": "microsoft.graph.termStore.set" }
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| allowMultipleValues | boolean | Specifies whether the column will allow more than one value   
| parentTerm     | microsoft.graph.termStore.term | Specifies the term guid whose children can be selected as column's value.  
| showFullyQualifiedName | boolean | Specifies whether to display the entire term path or only the term label.  
| termSet      | microsoft.graph.termStore.set | Termset whose children can be selected as column's value. 


