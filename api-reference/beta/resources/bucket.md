---
title: "bucket resource type"
description: "A Planner V4 bucket (a custom column used to group tasks within a plan). A bucket has no defaults beyond the universal property set (`id`, `displayName`, `createdBy`, `createdDateTime`, `lastModifiedBy`, `lastModifiedDateTime`); it doesn't carry `archivalInfo`."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# bucket resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Planner V4 bucket (a custom column used to group [tasks](task.md) within a [plan](plan.md)). A bucket has no defaults beyond the universal property set (`id`, `displayName`, `createdBy`, `createdDateTime`, `lastModifiedBy`, `lastModifiedDateTime`); it doesn't carry `archivalInfo`.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-buckets.md)|[bucket](../resources/bucket.md) collection|Get a list of the bucket objects and their properties.|
|[Create](../api/plan-post-buckets.md)|[bucket](../resources/bucket.md)|Create a new bucket object.|
|[Get](../api/bucket-get.md)|[bucket](../resources/bucket.md)|Read the properties and relationships of [bucket](../resources/bucket.md) object.|
|[Update](../api/bucket-update.md)|[bucket](../resources/bucket.md)|Update the properties of a bucket object.|
|[Delete](../api/plan-delete-buckets.md)|None|Delete a bucket object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[bucketCapability](../resources/bucketcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|creationInfo|[creationInfo](../resources/creationinfo.md)|Read-only creation metadata for the entity.|
|displayName|String|Title of the bucket.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|planId|String|ID of the plan that contains the bucket. Immutable after creation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bucket",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bucket",
  "id": "String (identifier)",
  "displayName": "String",
  "planId": "String",
  "creationInfo": {
    "@odata.type": "microsoft.graph.creationInfo"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.bucketCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

