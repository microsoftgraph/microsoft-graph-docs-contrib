---
title: "plannerBucketCreation resource type"
description: "Contains information about the origin of the plannerBucket."
author: "DanluCui"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerBucketCreation resource type

Namespace: microsoft.graph

The resources that derive from plannerBucketCreation contain information about the origin of the [plannerBucket](plannerbucket.md). Apps do not need to know the origin of the bucket to be able to work with it; however, some apps can use the additional information to provide specific experiences around these buckets. This is the abstract base type of [plannerExternalBucketSource](plannerExternalBucketSource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the bucket is created with. The possible values are: `external`, `publication` and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerBucketCreation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerBucketCreation",
  "creationSourceKind": "String-value"
}
```

