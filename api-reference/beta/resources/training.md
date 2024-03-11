---
title: "training resource type"
description: "Represents an attack simulation training."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
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
|[Get training](../api/training-get.md)|[training](../resources/training.md)|Get an attack simulation [training](../resources/training.md) for a tenant. |
|[Get trainingLanguageDetail](../api/traininglanguagedetail-get.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md) |Get the [language details](../resources/traininglanguagedetail.md) about an attack simulation training for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|availabilityStatus|trainingAvailabilityStatus|Training availability status. Possible values are: `unknown`, `notAvailable`, `available`, `archive`, `delete`, `unknownFutureValue`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the training.|
|createdDateTime|DateTimeOffset|Date and time when the training was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|The description for the training.|
|displayName|String|The display name for the training.|
|durationInMinutes|Int32|Training duration.|
|hasEvaluation|Boolean|Indicates whether the training has any evaluation.|
|id|String|Unique identifier for the **training** object. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who last modified the training.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the training was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|source|[simulationContentSource](../resources/simulation.md#simulationcontentsource-values)|Training content source. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales for content for the associated training.|
|tags|String collection|Training tags.|
|type|trainingType|The type of training. Possible values are: `unknown`, `phishing`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|languageDetails|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|Language specific details on a training.|

## JSON representation

The following JSON representation shows the resource type.

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
  "availabilityStatus": "String",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "durationInMinutes": "Int32",
  "hasEvaluation": "Boolean",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "source": "String",
  "supportedLocales": ["String"],
  "tags": ["String"],
  "type": "String"
}
```
