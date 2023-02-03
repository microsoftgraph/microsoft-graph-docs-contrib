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

Contains information about the relationship of a [plannerBucket](plannerbucket.md) to a user experience outside of Planner. This allows surfacing or syncing buckets in Planner with other experiences to track work in the context of that experience. 

You can display data in a **plannerExternalBucketSource** in a user interface to sync information for an external service, or to simply point to where a task was created in the external service. 

The combination of the **contextScenarioId** and **externalObjectId** properties is unique within a tenant. If creation is called with existing **contextScenarioId** and **externalObjectId** values, the existing object is returned with no modifications.

This type is derived from [plannerBucketCreation](plannerBucketCreation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the bucket is created with. The possible values are: `external`, `publication` and `unknownFutureValue`. The value of this property will be `external`. Inherited from [plannerBucketCreation](plannerBucketCreation.md).|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like "com.constoso.customerSupport".|
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
  "creationSourceKind": "String-value",
  "externalObjectId": "String-value",
  "externalContextId": "String-value",
  "contextScenarioId": "String-value",
}
```



