---
title: "dataClassificationService resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataClassificationService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get dataClassificationService](../api/dataclassificationservice-get.md)|[dataClassificationService](../resources/dataclassificationservice.md)|Read the properties and relationships of a [dataClassificationService](../resources/dataclassificationservice.md) object.|
|[Update dataClassificationService](../api/dataclassificationservice-update.md)|[dataClassificationService](../resources/dataclassificationservice.md)|Update the properties of a [dataClassificationService](../resources/dataclassificationservice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|classifyFileJobs|[jobResponseBase](../resources/jobresponsebase.md) collection|**TODO: Add Description**|
|classifyTextJobs|[jobResponseBase](../resources/jobresponsebase.md) collection|**TODO: Add Description**|
|evaluateDlpPoliciesJobs|[jobResponseBase](../resources/jobresponsebase.md) collection|**TODO: Add Description**|
|evaluateLabelJobs|[jobResponseBase](../resources/jobresponsebase.md) collection|**TODO: Add Description**|
|exactMatchDataStores|[exactMatchDataStore](../resources/exactmatchdatastore.md) collection|**TODO: Add Description**|
|exactMatchUploadAgents|[exactMatchUploadAgent](../resources/exactmatchuploadagent.md) collection|**TODO: Add Description**|
|jobs|[jobResponseBase](../resources/jobresponsebase.md) collection|**TODO: Add Description**|
|privacyMatchDataStores|[privacyMatchDataStore](../resources/privacymatchdatastore.md) collection|**TODO: Add Description**|
|sensitiveTypes|[sensitiveType](../resources/sensitivetype.md) collection|**TODO: Add Description**|
|sensitivityLabels|[sensitivityLabel](../resources/sensitivitylabel.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataClassificationService",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataClassificationService",
  "id": "String (identifier)"
}
```

