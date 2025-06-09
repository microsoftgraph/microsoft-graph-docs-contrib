---
title: "reportsRoot resource type"
description: "A container for all education analytics reports endpoints."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 11/15/2024
---

# reportRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for all education analytics reports endpoints.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:-----------|:---|:----------|
|readingAssignmentSubmission|[readingAssignmentSubmission](../resources/readingassignmentsubmission.md) collection|The details of the submitted reading assignments.|
|reflectCheckInResponse|[reflectCheckInResponse](../resources/reflectcheckinresponse.md) collection|The details of the check-in responses.|
|speakerAssignmentSubmission|[speakerAssignmentSubmission](../resources/speakerassignmentsubmission.md) collection|The details of the submitted speaker assignments.|

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
