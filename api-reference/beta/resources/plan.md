---
title: "plan resource type"
description: "Represents a plan in the Planner Unified plans Graph API and its owning container, tasks, buckets, and related planning data."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a plan in the Planner Unified plans Graph API. A plan belongs to a [container](../resources/plancontainer.md) and contains [buckets](../resources/bucket.md), [tasks](../resources/task.md), and related planning data. Creation metadata is exposed through **creationInfo**, not top-level **createdBy** and **createdDateTime** properties.

Use the listed methods to create, read, update, and delete plans. The presence of a relationship doesn't imply that its related objects support standalone create, update, or delete operations. For supported nested creation, see [Create plan](../api/planner-post-plans_v2.md).


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/planner-list-plans_v2.md)|[plan](../resources/plan.md) collection|Get a list of the plan objects and their properties.|
|[Create](../api/planner-post-plans_v2.md)|[plan](../resources/plan.md)|Create a new plan object.|
|[Get](../api/plan-get.md)|[plan](../resources/plan.md)|Read the properties and relationships of [plan](../resources/plan.md) object.|
|[Update](../api/plan-update.md)|[plan](../resources/plan.md)|Update the properties of a plan object.|
|[Delete](../api/planneruser-delete-v2.md)|None|Delete a plan object.|
|[List buckets](../api/plan-list-buckets.md)|[bucket](../resources/bucket.md) collection|Get a list of the bucket objects and their properties.|
|[Create bucket](../api/plan-post-buckets.md)|[bucket](../resources/bucket.md)|Create a new bucket object.|
|[List contexts](../api/plan-list-contexts.md)|[planContextLink](../resources/plancontextlink.md) collection|Get a list of the planContextLink objects and their properties.|
|[List customFieldDefinitions](../api/plan-list-customfielddefinitions.md)|[customFieldDefinition](../resources/customfielddefinition.md) collection|Get a list of the customFieldDefinition objects and their properties.|
|[List dependencies](../api/plan-list-dependencies.md)|[dependency](../resources/dependency.md) collection|Get a list of the dependency objects and their properties.|
|[List goals](../api/plan-list-goals.md)|[goal](../resources/goal.md) collection|Get a list of the goal objects and their properties.|
|[List historyItems](../api/plan-list-historyitems.md)|[historyItem](../resources/historyitem.md) collection|Get a list of the historyItem objects and their properties.|
|[List links](../api/plan-list-links.md)|[contentLink](../resources/contentlink.md) collection|Get a list of the contentLink objects and their properties.|
|[List tasks](../api/plan-list-tasks.md)|[task](../resources/task.md) collection|Get a list of the task objects and their properties.|
|[Create task](../api/planner-post-tasks_v2.md)|[task](../resources/task.md)|Create a task through the root task collection, with this plan's ID in the request body.|
|[Delete task](../api/plan-delete-tasks.md)|None|Delete a task through its root task URL.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Service-populated information about whether the entity is archived, and when it was archived. Read-only.|
|calendar|[planCalendar](../resources/plancalendar.md)|Working-time calendar settings for the plan.|
|capabilities|[planCapability](../resources/plancapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|container|[planContainer](../resources/plancontainer.md)|Identifies the group, Teams channel, or user that owns the plan. Required, and immutable after creation.|
|contentSensitivityLabelAssignment|[contentSensitivityLabelAssignment](../resources/contentsensitivitylabelassignment.md)|The sensitivity label assigned to content associated with the plan.|
|creationInfo|[creationInfo](../resources/creationinfo.md)|Read-only creation metadata for the entity.|
|displayName|String|Title of the plan.|
|duration|Int32|Computed duration of the plan, in seconds. Read-only.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|hasChat|Boolean|Indicates whether the plan has an associated chat. Read-only.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|planView|[planView](../resources/planview.md)|Plan-scoped view settings, including category definitions.|
|sharedWithContainers|[plannerSharedWithContainer](../resources/plannersharedwithcontainer.md) collection|The list of containers (for example, additional groups or channels) that the plan is shared with.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|buckets|[bucket](../resources/bucket.md) collection|The collection of buckets in the plan. Read-only. Nullable.|
|contexts|[planContextLink](../resources/plancontextlink.md) collection|Context links describing where the plan is surfaced. Can be supplied when creating a plan by using a deep insert. Nullable.|
|customFieldDefinitions|[customFieldDefinition](../resources/customfielddefinition.md) collection|The collection of custom field definitions in the plan. Read-only. Nullable.|
|dependencies|[dependency](../resources/dependency.md) collection|The collection of dependencies between items in the plan. Read-only. Nullable.|
|goals|[goal](../resources/goal.md) collection|The collection of goals in the plan. Read-only. Nullable.|
|historyItems|[historyItem](../resources/historyitem.md) collection|The collection of history (audit) items for the plan. Read-only. Nullable.|
|links|[contentLink](../resources/contentlink.md) collection|Content links attached to the plan. Can be supplied when creating a plan by using a deep insert. Nullable.|
|tasks|[task](../resources/task.md) collection|The collection of tasks in the plan. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plan",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plan",
  "id": "String (identifier)",
  "displayName": "String",
  "container": {
    "@odata.type": "microsoft.graph.planContainer"
  },
  "calendar": {
    "@odata.type": "microsoft.graph.planCalendar"
  },
  "creationInfo": {
    "@odata.type": "microsoft.graph.creationInfo"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "planView": {
    "@odata.type": "microsoft.graph.planView"
  },
  "contentSensitivityLabelAssignment": {
    "@odata.type": "microsoft.graph.contentSensitivityLabelAssignment"
  },
  "hasChat": "Boolean",
  "duration": "Int32",
  "sharedWithContainers": [
    {
      "@odata.type": "microsoft.graph.plannerSharedWithContainer"
    }
  ],
  "capabilities": {
    "@odata.type": "microsoft.graph.planCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```
