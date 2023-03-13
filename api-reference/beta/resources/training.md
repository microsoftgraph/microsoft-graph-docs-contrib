---
title: "training resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# training resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trainings](../api/attacksimulationroot-list-trainings.md)|[training](../resources/training.md) collection|Get a list of the [training](../resources/training.md) objects and their properties.|
|[Create training](../api/attacksimulationroot-post-trainings.md)|[training](../resources/training.md)|Create a new [training](../resources/training.md) object.|
|[Get training](../api/training-get.md)|[training](../resources/training.md)|Read the properties and relationships of a [training](../resources/training.md) object.|
|[Update training](../api/training-update.md)|[training](../resources/training.md)|Update the properties of a [training](../resources/training.md) object.|
|[Delete training](../api/attacksimulationroot-delete-trainings.md)|None|Delete a [training](../resources/training.md) object.|
|[List languageDetails](../api/training-list-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|Get the trainingLanguageDetail resources from the languageDetails navigation property.|
|[Add trainingLanguageDetail](../api/training-post-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Add languageDetails by posting to the languageDetails collection.|
|[Remove languageDetails](../api/training-delete-languagedetails.md)|None|Remove a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityStatus|trainingAvailabilityStatus|**TODO: Add Description**.The possible values are: `unknown`, `notAvailable`, `available`, `archive`, `delete`, `unknownFutureValue`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|durationInMinutes|Int32|**TODO: Add Description**|
|hasEvaluation|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|source|simulationContentSource|**TODO: Add Description**.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|supportedLocales|String collection|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|
|type|trainingType|**TODO: Add Description**.The possible values are: `unknown`, `phishing`, `unknownFutureValue`.|

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

