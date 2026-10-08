---
title: "sensitiveType resource type"
description: "Represents information about a sensitive information type used to classify content."
author: "vipulyadav"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensitiveType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a sensitive information type (SIT) used to classify content.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|classificationMethod|[classificationMethod](enums.md#classificationmethod-values)|The classification method. The possible values are: `patternMatch`, `exactDataMatch`, `fingerprint`, `machineLearning`, `privacyDataMatch`, `aiPowered`, `unknownFutureValue`. `privacyDataMatch` performs privacy data matching based on tenant data. `aiPowered` performs AI-powered classification and can benefit from supported caller-supplied embeddings. `unknownFutureValue` is an evolvable enumeration sentinel value. Don't use it.|
|description|String|The description of the sensitive information type.|
|id|String|The unique identifier for the sensitive information type. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the sensitive information type was last modified.|
|name|String|The name of the sensitive information type.|
|publisherName|String|The name of the publisher.|
|rulePackageId|String|The identifier of the rule package.|
|rulePackageType|String|The type of the rule package.|
|scope|[sensitiveTypeScope](enums.md#sensitivetypescope-values)|The scope of the sensitive information type. The possible values are: `fullDocument`, `partialDocument`.|
|sensitiveTypeSource|[sensitiveTypeSource](enums.md#sensitivetypesource-values)|The source of sensitive type. The possible values are: `outOfBox`, `tenant`.|
|state|String|The state of the sensitive information type.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sensitiveType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitiveType",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "rulePackageId": "String",
  "rulePackageType": "String",
  "publisherName": "String",
  "state": "String",
  "scope": "String",
  "sensitiveTypeSource": "String",
  "classificationMethod": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```
