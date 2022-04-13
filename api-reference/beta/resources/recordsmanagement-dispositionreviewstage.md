---
title: "dispositionReviewStage resource type"
description: "Represents the reviewers to approve at each stage of the disposition process of a document."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# dispositionReviewStage resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For content that has a label set for a disposition review at the end of a retetnion period, the 'dispositionReviewStage' resource type can be used to retrieve details about the reviewer and review stage. To read more about disposition of data, see [Disposition of content](/microsoft-365/compliance/disposition).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reviewers|String collection|A collection of reviewers at each stage|
|stageName|String|Unique name for each stage|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dispositionReviewStage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dispositionReviewStage",
  "stageName": "String",
  "reviewers": [
    "String"
  ]
}
```

