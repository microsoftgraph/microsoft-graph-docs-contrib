---
title: "challengingWord resource type"
description: "Represents a word a student found challenging in a reading assignment submission."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/29/2024
---

# challengingWord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
