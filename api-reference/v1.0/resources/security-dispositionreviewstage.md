---
title: "dispositionReviewStage resource type"
description: "Represents a multi-level review process where the reviewers indicate at each stage of the disposition whether to delete or further retain the content item.."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 06/10/2024
---

# dispositionReviewStage resource type

Namespace: microsoft.graph.security

Represents a multi-level review process where the reviewers indicate at each stage of the disposition whether to delete or further retain the content item.
For details, see [Disposition of content](/microsoft-365/compliance/disposition).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/security-labelsroot-post-retentionlabel.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Create a new [retentionLabel](../resources/security-retentionlabel.md) object. |
|[Update](../api/security-retentionlabel-update.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Update the [retentionLabel](../resources/security-retentionlabel.md) object. |


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID for each stage. |
|name|String|Name representing each stage within a collection. |
|reviewersEmailAddresses|String collection|A collection of reviewers at each stage. |
|stageNumber|String|The unique sequence number for each stage of the disposition review. |


## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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
  "stageNumber": "String",
  "name": "String",
  "reviewersEmailAddresses": [
    "String"
  ]
}
```
