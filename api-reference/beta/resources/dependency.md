---
title: "dependency resource type"
description: "An edge that expresses a dependency constraint between two items (for example, two tasks) in a plan. All four endpoint properties (`sourceItemType`, `sourceItemId`, `targetItemType`, `targetItemId`) are returned by default because they are the entity's intrinsic content."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# dependency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An edge that expresses a dependency constraint between two items (for example, two [tasks](task.md)) in a [plan](plan.md). All four endpoint properties (`sourceItemType`, `sourceItemId`, `targetItemType`, `targetItemId`) are returned by default because they are the entity's intrinsic content.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-dependencies.md)|[dependency](../resources/dependency.md) collection|Get a list of the dependency objects and their properties.|
|[Create](../api/plan-post-dependencies.md)|[dependency](../resources/dependency.md)|Create a new dependency object.|
|[Get](../api/dependency-get.md)|[dependency](../resources/dependency.md)|Read the properties and relationships of [dependency](../resources/dependency.md) object.|
|[Update](../api/dependency-update.md)|[dependency](../resources/dependency.md)|Update the properties of a dependency object.|
|[Delete](../api/plan-delete-dependencies.md)|None|Delete a dependency object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived.|
|constraint|dependencyType|The kind of dependency constraint between the source and target items. The possible values are: `sourceFinishDrivesTargetStart`, `sourceStartDrivesTargetStart`, `sourceFinishDrivesTargetFinish`, `targetStartDrivesSourceFinish`, `unknownFutureValue`.|
|creationInfo|[creationInfo](../resources/creationinfo.md)|Read-only creation metadata for the entity.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|sourceItemId|String|ID of the source item in the dependency.|
|targetItemId|String|ID of the target item in the dependency.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dependency",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dependency",
  "id": "String (identifier)",
  "sourceItemId": "String",
  "targetItemId": "String",
  "constraint": "String",
  "creationInfo": {
    "@odata.type": "microsoft.graph.creationInfo"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

