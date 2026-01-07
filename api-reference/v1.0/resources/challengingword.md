---
title: "challengingWord resource type"
description: "Represents a word a student found challenging in a reading assignment submission."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 06/09/2025
---

# challengingWord resource type

Namespace: microsoft.graph

Represents a word a student found challenging in a reading assignment submission.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|Number of times the word was found challenging by the student during the reading session.|
|word|String|The specific word that the student found challenging during the reading session.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.challengingWord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.challengingWord",
  "count": "Int64",
  "word": "String" 
}
```
