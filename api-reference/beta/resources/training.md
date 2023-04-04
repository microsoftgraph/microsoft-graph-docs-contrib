---
title: "training resource type"
description: "Represents an attack simulation training."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# training resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trainings](../api/attacksimulationroot-list-trainings.md)|[training](../resources/training.md) collection|Get a list of the [training](../resources/training.md) objects and their properties.|
|[Get training](../api/training-get.md)|[training](../resources/training.md)|Read the properties and relationships of a [training](../resources/training.md) object.|
|[List languageDetails](../api/training-list-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|Get the trainingLanguageDetail resources from the languageDetails navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityStatus|trainingAvailabilityStatus|Training availability status.The possible values are: `unknown`, `notAvailable`, `available`, `archive`, `delete`, `unknownFutureValue`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|User who created the training.|
|createdDateTime|DateTimeOffset|Creation date and time.|
|description|String|Description|
|displayName|String|Display name|
|durationInMinutes|Int32|Training duration.|
|hasEvaluation|Boolean|Is the training has any evaluation.|
|id|String|Identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|User who recently updated  the training.|
|lastModifiedDateTime|DateTimeOffset|Updated date and time.|
|source|simulationContentSource|Source.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales.|
|tags|String collection|Training tags.|
|type|trainingType|*Type of training.The possible values are: `unknown`, `phishing`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|languageDetails|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.training",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.training",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "durationInMinutes": "Integer",
  "source": "String",
  "type": "String",
  "tags": [
    "String"
  ],
  "availabilityStatus": "String",
  "supportedLocales": [
    "String"
  ],
  "hasEvaluation": "Boolean",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```

