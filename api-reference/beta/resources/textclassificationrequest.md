---
title: "textClassificationRequest resource type"
description: "Represents a request to classify text for sensitive information types, with optional caller-supplied precomputed embeddings."
author: "jcksonhe"
ms.date: 07/10/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# textClassificationRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a request to classify text for sensitive information types. Optionally include caller-supplied precomputed [embeddingInput](../resources/embeddinginput.md) values so the service can skip recomputing embeddings for the text.

A **textClassificationRequest** is submitted to the **classifyText** action of the **dataClassificationService** resource.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentMetaData|[classificationRequestContentMetaData](../resources/classificationrequestcontentmetadata.md)|Metadata that describes the content being classified.|
|embeddings|[embeddingInput](../resources/embeddinginput.md) collection|Optional caller-supplied precomputed embeddings for the text, so the service can skip recomputing them. Embeddings for models outside the allow-list are rejected with a 400.|
|fileExtension|String|The file extension of the content being classified.|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md).|
|matchTolerancesToInclude|[mlClassificationMatchTolerance](enums.md#mlclassificationmatchtolerance-values)|The match tolerance levels to include in the classification results. The possible values are: `exact`, `near`.|
|scopesToRun|[sensitiveTypeScope](enums.md#sensitivetypescope-values)|The document scopes over which to run classification. The possible values are: `fullDocument`, `partialDocument`.|
|sensitiveTypeIds|String collection|The identifiers of the sensitive information types to evaluate against the text.|
|text|String|The text to classify.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.textClassificationRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.textClassificationRequest",
  "id": "String (identifier)",
  "text": "String",
  "embeddings": [
    {
      "@odata.type": "microsoft.graph.embeddingInput",
      "modelType": "String",
      "data": "String"
    }
  ],
  "fileExtension": "String",
  "sensitiveTypeIds": [
    "String"
  ],
  "scopesToRun": "String",
  "matchTolerancesToInclude": "String",
  "contentMetaData": {
    "@odata.type": "microsoft.graph.classificationRequestContentMetaData",
    "sourceId": "String",
    "workloadType": "String"
  }
}
```

