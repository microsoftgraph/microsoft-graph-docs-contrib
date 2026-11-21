---
title: "userAssignment resource type"
description: "Represents the assignment of a user to a task. The assignee identity (`user`) is returned by default; `assignedBy` and `assignedDateTime` require $select."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# userAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the assignment of a user to a [task](../resources/task.md). The assignee identity (`user`) is returned by default; `assignedBy` and `assignedDateTime` require $select.

To assign users when creating a task, supply **userAssignments** in the [Create task](../api/planner-post-tasks_v2.md) request. The service supplies the assignment audit fields.

Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/task-list-userassignments.md)|[userAssignment](../resources/userassignment.md) collection|Get a list of the userAssignment objects and their properties.|
|[Get](../api/userassignment-get.md)|[userAssignment](../resources/userassignment.md)|Read the properties and relationships of [userAssignment](../resources/userassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) that made the assignment. Read-only.|
|assignedDateTime|DateTimeOffset|Date and time the assignment was made. Read-only.|
|capabilities|[userAssignmentCapability](../resources/userassignmentcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|user|[identity](../resources/identity.md)|Identity of the user assigned to the task.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userAssignment",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userAssignment",
  "id": "String (identifier)",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "assignedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "assignedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.userAssignmentCapability"
  }
}
```
