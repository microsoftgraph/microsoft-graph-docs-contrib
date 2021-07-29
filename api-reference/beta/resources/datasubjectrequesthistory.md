---
title: "dataSubjectRequestHistory resource type"
description: "Represents the history for the data subject request."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# dataSubjectRequestHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the history for the data subject request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changedBy|[identitySet](../resources/identityset.md)|Identify of the user that changed the data subject request|
|eventDateTime|DateTimeOffset|Data and time when the entity was changed.|
|stage|dataSubjectRequestStage|The stage when the entity was changed. Possible values are: `contentRetrieval`, `contentReview`, `generateReport`, `contentDeletion`, `caseResolved`, `unknownFutureValue`.|
|stageStatus|dataSubjectRequestStageStatus|The status of the stage when the entity was changed. Possible values are: `notStarted`, `current`, `completed`, `failed`, `unknownFutureValue`.|
|type|String|Type of history|

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
    "type": "CaseCreated",
    "stage": "contentRetrieval",
    "stageStatus": "notStarted",
    "eventDateTime": "2021-06-21T12:03:40.1644015Z",
    "changedBy": {
        "user": {
            "id": "",
            "displayName": "user@contoso.onmicrosoft.com"
        }
    }
}
```

