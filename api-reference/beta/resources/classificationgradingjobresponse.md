---
title: "classificationGradingJobResponse resource type"
description: "Represents classification results for grading."
author: "ysalib01"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classificationGradingJobResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents classification results for grading. Inherits from `classificationJobResponse` without adding properties.

The inherited **result** retains the existing classification response structure. Eligible matches at `result.classification[].matches[]` use [classificationGradingContentLocation](../resources/classificationgradingcontentlocation.md) to include **contextText**.

## Methods

Retrieve the job with `GET /dataClassification/jobs/{job-id}`. For asynchronous requests, follow the returned `Location` URL and poll until the job reaches a terminal status. No separate methods or new permissions are introduced.

## Properties

All properties, including **id**, **status**, **error**, and **result**, are inherited from `classificationJobResponse`. Only the job identifier is expanded below.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The inherited job identifier.|

## Relationships

None.

## JSON representation

This abbreviated representation shows the type and job identifier. The other inherited properties, including **result**, aren't expanded.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.classificationGradingJobResponse",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.classificationGradingJobResponse",
  "id": "String (identifier)"
}
```
