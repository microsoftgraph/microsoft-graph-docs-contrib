---
title: "subjectRightsRequestHistory resource type"
description: "Represents the history for a subject rights request."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# subjectRightsRequestHistory resource type

Namespace: microsoft.graph

Represents the history for a subject rights request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changedBy|[identitySet](../resources/identityset.md)|Identity of the user who changed the  subject rights request.|
|eventDateTime|DateTimeOffset|Data and time when the entity was changed.|
|stage|subjectRightsRequestStage|The stage when the entity was changed. Possible values are: `contentRetrieval`, `contentReview`, `generateReport`, `contentDeletion`, `caseResolved`, `unknownFutureValue`, `approval`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `approval`.|
|stageStatus|subjectRightsRequestStageStatus|The status of the stage when the entity was changed. Possible values are: `notStarted`, `current`, `completed`, `failed`, `unknownFutureValue`.|
|type|String|Type of history.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestHistory",
    "type": "String",
    "stage": "String",
    "stageStatus": "String",
    "eventDateTime": "String (timeStamp)",
    "changedBy": {
        "user": {
            "id": "String",
            "displayName": "String"
        }
    }
}
```

