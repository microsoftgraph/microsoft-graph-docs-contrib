---
title: "reportsRoot resource type"
description: "A container for all endpoints related to education analytics reports."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 11/15/2024
---

# reportsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for all endpoints related to education analytics reports.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:-----------|:---|:----------|
|readingAssignmentSubmissions|[readingAssignmentSubmission](../resources/readingassignmentsubmission.md) collection|Details of submitted reading assignments.|
|readingCoachPassages|[readingCoachPassage](../resources/readingcoachpassage.md) collection|Details of practiced Reading Coach passages.|
|reflectCheckInResponses|[reflectCheckInResponse](../resources/reflectcheckinresponse.md) collection|Details of check-in responses.|
|speakerAssignmentSubmissions|[speakerAssignmentSubmission](../resources/speakerassignmentsubmission.md) collection|Details of submitted speaker assignments.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.reportsRoot"
}
```
