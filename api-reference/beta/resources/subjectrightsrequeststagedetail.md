---
title: "subjectRightsRequestStageDetail resource type"
description: "Represents the properties of the stages of a subject rights request"
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# subjectRightsRequestStageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of the stages of a subject rights request. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|Describes the error, if any, for the current stage.|
|stage|subjectRightsRequestStage|The stage of the subject rights request. Possible values are: `contentRetrieval`, `contentReview`, `generateReport`, `contentDeletion`, `caseResolved`, `unknownFutureValue`, `approval`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `approval`.|
|status|subjectRightsRequestStageStatus|Status of the current stage. Possible values are: `notStarted`, `current`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestStageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestStageDetail",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "stage": "microsoft.graph.subjectRightsRequestStage",
  "status": "microsoft.graph.subjectRightsRequestStageStatus"
}
```

