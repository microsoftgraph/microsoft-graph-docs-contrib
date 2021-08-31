---
title: "dataSubjectRequestStageDetail resource type"
description: "Represents the properties of the stages of a data subject request"
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# dataSubjectRequestStageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of the stages of a data subject request. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|Describes the error, if any, for the current stage.|
|stage|dataSubjectRequestStage|The stage of the data subject request. Possible values are: `contentRetrieval`, `contentReview`, `generateReport`, `contentDeletion`, `caseResolved`, `unknownFutureValue`.|
|status|dataSubjectRequestStageStatus|Status of the current stage. Possible values are: `notStarted`, `current`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSubjectRequestStageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubjectRequestStageDetail",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "stage": "contentReview",
  "status": "completed"
}
```

