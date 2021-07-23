---
title: "dataSubjectRequestHistory resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSubjectRequestHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|stage|dataSubjectRequestStage|**TODO: Add Description**. Possible values are: `contentRetrieval`, `contentReview`, `generateReport`, `contentDeletion`, `caseResolved`, `unknownFutureValue`.|
|stageStatus|dataSubjectRequestStageStatus|**TODO: Add Description**. Possible values are: `notStarted`, `current`, `completed`, `failed`, `unknownFutureValue`.|
|type|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSubjectRequestHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubjectRequestHistory",
  "changedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "eventDateTime": "String (timestamp)",
  "stage": "String",
  "stageStatus": "String",
  "type": "String"
}
```

