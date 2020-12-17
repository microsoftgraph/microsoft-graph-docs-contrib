---
title: "accessReviewInstance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReviewInstance resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewInstances](../api/accessreviewinstance-list.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.|
|[Create accessReviewInstance](../api/accessreviewinstance-create.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Create a new [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Get accessReviewInstance](../api/accessreviewinstance-get.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Update accessReviewInstance](../api/accessreviewinstance-update.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Update the properties of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Delete accessReviewInstance](../api/accessreviewinstance-delete.md)|None|Deletes an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[stop](../api/accessreviewinstance-stop.md)|None|**TODO: Add Description**|
|[sendReminder](../api/accessreviewinstance-sendreminder.md)|None|**TODO: Add Description**|
|[resetDecisions](../api/accessreviewinstance-resetdecisions.md)|None|**TODO: Add Description**|
|[applyDecisions](../api/accessreviewinstance-applydecisions.md)|None|**TODO: Add Description**|
|[acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md)|None|**TODO: Add Description**|
|[List decisions](../api/accessreviewinstance-list-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get the accessReviewInstanceDecisionItem resources from the decisions navigation property.|
|[Create accessReviewInstanceDecisionItem](../api/accessreviewinstance-post-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Create a new accessReviewInstanceDecisionItem object.|
|[List accessReviewScheduleDefinition](../api/accessreviewinstance-list-definition.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get the accessReviewScheduleDefinition resources from the definition navigation property.|
|[Add accessReviewScheduleDefinition](../api/accessreviewinstance-post-definition.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Add definition by posting to the definition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|decisions|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|**TODO: Add Description**|
|definition|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "status": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  }
}
```

