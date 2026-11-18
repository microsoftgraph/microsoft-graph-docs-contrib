---
title: "sensitiveContentEvidence resource type"
description: "Represents the text and position of evidence supporting a sensitive information match."
author: "ysalib01"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensitiveContentEvidence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in the **evidences** collection of [classificationGradingContentLocation](../resources/classificationgradingcontentlocation.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|length|Int32|The length of the evidence text.|
|match|String|The matched evidence text.|
|offset|Int32|The start position of the evidence text.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sensitiveContentEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitiveContentEvidence",
  "match": "String",
  "offset": "Integer",
  "length": "Integer"
}
```
