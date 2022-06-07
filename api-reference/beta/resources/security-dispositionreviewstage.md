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

For content that has a label set for a disposition review at the end of a retetnion period, the 'dispositionReviewStage' resource type provides details about the reviewer and review stage. To read more about disposition of data, see [Disposition of content](/microsoft-365/compliance/disposition).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dispositionReviewStages](../api/security-retentionlabel-list-dispositionreviewstages.md)|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|Get a list of the [dispositionReviewStage](../resources/security-dispositionreviewstage.md) objects and their properties.|
|[Create dispositionReviewStage](../api/security-retentionlabel-post-dispositionreviewstages.md)|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md)|Create a new [dispositionReviewStage](../resources/security-dispositionreviewstage.md) object.|
|[Get dispositionReviewStage](../api/security-dispositionreviewstage-get.md)|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md)|Read the properties and relationships of a [dispositionReviewStage](../resources/security-dispositionreviewstage.md) object.|
|[Update dispositionReviewStage](../api/security-dispositionreviewstage-update.md)|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md)|Update the properties of a [dispositionReviewStage](../resources/security-dispositionreviewstage.md) object.|
|[Delete dispositionReviewStage](../api/security-retentionlabel-delete-dispositionreviewstages.md)|None|Deletes a [dispositionReviewStage](../resources/security-dispositionreviewstage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID for each stage|
|name|String|Name representing each stage within a collection|
|reviewersEmailAddresses|String collection|A collection of reviewers at each stage|
|stageNumber|Int32|Execution sequence number for each stage|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dispositionReviewStage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dispositionReviewStage",
  "id": "String (identifier)",
  "stageNumber": "Integer",
  "name": "String",
  "reviewersEmailAddresses": [
    "String"
  ]
}
```
