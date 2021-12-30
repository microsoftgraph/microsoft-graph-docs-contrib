---
title: "accessReviewInstance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReviewInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewInstances](../api/accessreviewinstance-list.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.|
|[Create accessReviewInstance](../api/user-post-pendingaccessreviewinstances.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Create a new [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Get accessReviewInstance](../api/accessreviewinstance-get.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Update accessReviewInstance](../api/accessreviewinstance-update.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Update the properties of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Delete accessReviewInstance](../api/accessreviewinstance-delete.md)|None|Deletes an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[List stages](../api/accessreviewinstance-list-stages.md)|[accessReviewStage](../resources/accessreviewstage.md) collection|Get the accessReviewStage resources from the stages navigation property.|
|[Create accessReviewStage](../api/accessreviewinstance-post-stages.md)|[accessReviewStage](../resources/accessreviewstage.md)|Create a new accessReviewStage object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|errors|[accessReviewError](../resources/accessreviewerror.md) collection|**TODO: Add Description**|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isDraft|Boolean|**TODO: Add Description**|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|contactedReviewers|[accessReviewReviewer](../resources/accessreviewreviewer.md) collection|**TODO: Add Description**|
|decisions|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|**TODO: Add Description**|
|definition|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|**TODO: Add Description**|
|stages|[accessReviewStage](../resources/accessreviewstage.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.accessReviewError"
    }
  ],
  "status": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "isDraft": "Boolean"
}
```

