---
title: "classificationGradingContentLocation resource type"
description: "Represents a classification grading match with surrounding document context."
author: "ysalib01"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classificationGradingContentLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a classification grading match with surrounding document context. In a [classificationGradingJobResponse](../resources/classificationgradingjobresponse.md), eligible matches at `result.classification[].matches[]` use this type.

Inherits from `sensitiveContentLocation` and adds **contextText** for eligible partial-document grading matches with accepted caller-supplied embeddings. This includes final pattern-match and retained AI-refined detections, but not Exact Data Match detections. The shared base type and ordinary classification responses are unchanged.

Context text can contain sensitive document content. Use it only for authorized grading and don't write it to diagnostic logs.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|confidence|Int32|The match confidence level. Inherited from `sensitiveContentLocation`.|
|contextText|String|The complete match and surrounding text, clipped to document boundaries. The default context is up to 100 characters on each side. Read-only, nullable, and omitted when unavailable.|
|evidences|[sensitiveContentEvidence](../resources/sensitivecontentevidence.md) collection|Evidence associated with the match. Inherited from `sensitiveContentLocation`.|
|idMatch|String|The matched identifier text. Inherited from `sensitiveContentLocation`.|
|length|Int32|The match length in the normalized classified text, not in **contextText**. Inherited from `sensitiveContentLocation`.|
|offset|Int32|The match's start position in the normalized classified text, not in **contextText**. Inherited from `sensitiveContentLocation`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.classificationGradingContentLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.classificationGradingContentLocation",
  "confidence": "Integer",
  "evidences": [
    {
      "@odata.type": "microsoft.graph.sensitiveContentEvidence"
    }
  ],
  "idMatch": "String",
  "length": "Integer",
  "offset": "Integer",
  "contextText": "String"
}
```
