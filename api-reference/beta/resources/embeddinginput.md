---
title: "embeddingInput resource type"
description: "A set of precomputed embedding vectors produced by a single embedding model for the request text."
author: "jcksonhe"
ms.date: 07/10/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# embeddingInput resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A set of precomputed embedding vectors produced by a single embedding model for the request text. Provide one **embeddingInput** per model in the [textClassificationRequest](../resources/textclassificationrequest.md) **embeddings** collection so the service can skip recomputing embeddings.


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|data|String|The embedding vectors the model produced for the text, encoded as a base64 string of little-endian 32-bit floats. Every vector the model emitted (for example, one per text chunk) is concatenated in order; each contributes exactly the modelType's embedding dimension worth of float components, so the decoded length must be a whole multiple of that dimension.|
|modelType|String|The embedding model identifier drawn from the service allow-list (for example: text-embedding-3-small-512). Unique (case-insensitive) within the embeddings collection; entries whose modelType is outside the allow-list are rejected with a 400.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.embeddingInput"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.embeddingInput",
  "modelType": "String",
  "data": "String"
}
```

