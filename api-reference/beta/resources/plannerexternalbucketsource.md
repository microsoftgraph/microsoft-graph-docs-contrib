---
title: "plannerExternalBucketSource resource type"
description: "Contains information about the relationship of a plannerBucket to a user experience outside of Planner."
author: "DanluCui"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerExternalBucketSource resource type

Namespace: microsoft.graph

Contains information about the relationship of a [plannerBucket](plannerbucket.md) to a user experience outside of Planner. Buckets in Planner can be surfaced in or synced with other experiences to track work in the context of that experience. Data in the plannerExternalBucketSource can be displayed in a user interface, used for sync information utilized by external services, or used to simply point to where a bucket was created in an external service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This will generally take the form of "com.contoso.myapp".|
|externalObjectId|String| Nullable. The id of the entity that an external service associates with a bucket.|
|externalContextId|String| Nullable. The id of the external entity's containing entity or context.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerExternalBucketSource"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.plannerExternalBucketSource",
    "externalObjectId": "String-value",
    "externalContextId": "String-value",
    "contextScenarioId": "String-value",
}
```



