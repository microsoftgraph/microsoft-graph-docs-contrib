---
title: "reportsRoot resource type"
description: "Represents a container for reading assignment submissions and reflection check-in responses."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 06/09/2025
---

# reportsRoot resource type

Namespace: microsoft.graph

Represents a container for reading assignment submissions and reflection check-in responses.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:-----------|:---|:----------|
|readingAssignmentSubmission|[readingAssignmentSubmission](../resources/readingassignmentsubmission.md) collection|The submission details of the reading assignment submitted by a student.|
|reflectCheckInResponse|[reflectCheckInResponse](../resources/reflectcheckinresponse.md) collection|The response to the Microsoft Reflect check-in.|

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
