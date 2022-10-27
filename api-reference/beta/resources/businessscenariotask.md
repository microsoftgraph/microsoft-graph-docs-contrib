---
title: "businessScenarioTask resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [plannerTask](../resources/plannertask.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List businessScenarioTasks](../api/businessscenarioplanner-list-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md) collection|Get a list of the [businessScenarioTask](../resources/businessscenariotask.md) objects and their properties.|
|[Create businessScenarioTask](../api/businessscenarioplanner-post-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Create a new [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Get businessScenarioTask](../api/businessscenariotask-get.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Read the properties and relationships of a [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Update businessScenarioTask](../api/businessscenariotask-update.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Update the properties of a [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Delete businessScenarioTask](../api/businessscenarioplanner-delete-tasks.md)|None|Delete a [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[List plannerAssignedToTaskBoardTaskFormat](../api/businessscenariotask-list-assignedtotaskboardformat.md)|[plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md) collection|Get the plannerAssignedToTaskBoardTaskFormat resources from the assignedToTaskBoardFormat navigation property.|
|[Create plannerAssignedToTaskBoardTaskFormat](../api/businessscenariotask-post-assignedtotaskboardformat.md)|[plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md)|Create a new plannerAssignedToTaskBoardTaskFormat object.|
|[List plannerBucketTaskBoardTaskFormat](../api/businessscenariotask-list-buckettaskboardformat.md)|[plannerBucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md) collection|Get the plannerBucketTaskBoardTaskFormat resources from the bucketTaskBoardFormat navigation property.|
|[Create plannerBucketTaskBoardTaskFormat](../api/businessscenariotask-post-buckettaskboardformat.md)|[plannerBucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md)|Create a new plannerBucketTaskBoardTaskFormat object.|
|[List plannerTaskDetails](../api/plannertask-list-details.md)|[plannerTaskDetails](../resources/plannertaskdetails.md) collection|Get the plannerTaskDetails resources from the details navigation property.|
|[Create plannerTaskDetails](../api/businessscenariotask-post-details.md)|[plannerTaskDetails](../resources/plannertaskdetails.md)|Create a new plannerTaskDetails object.|
|[List plannerProgressTaskBoardTaskFormat](../api/businessscenariotask-list-progresstaskboardformat.md)|[plannerProgressTaskBoardTaskFormat](../resources/plannerprogresstaskboardtaskformat.md) collection|Get the plannerProgressTaskBoardTaskFormat resources from the progressTaskBoardFormat navigation property.|
|[Create plannerProgressTaskBoardTaskFormat](../api/businessscenariotask-post-progresstaskboardformat.md)|[plannerProgressTaskBoardTaskFormat](../resources/plannerprogresstaskboardtaskformat.md)|Create a new plannerProgressTaskBoardTaskFormat object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeChecklistItemCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|assigneePriority|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|bucketId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|businessScenarioProperties|[businessScenarioProperties](../resources/businessscenarioproperties.md)|**TODO: Add Description**|
|checklistItemCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|completedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|conversationThreadId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|creationSource|[plannerTaskCreation](../resources/plannertaskcreation.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|dueDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|hasDescription|Boolean|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|orderHint|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|percentComplete|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|planId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|previewType|plannerPreviewType|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|priority|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|referenceCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|**TODO: Add Description**|
|title|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md)|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md)|
|details|[plannerTaskDetails](../resources/plannertaskdetails.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md)|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](../resources/plannerprogresstaskboardtaskformat.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenarioTask",
  "baseType": "microsoft.graph.plannerTask",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioTask",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "planId": "String",
  "bucketId": "String",
  "title": "String",
  "orderHint": "String",
  "assigneePriority": "String",
  "percentComplete": "Integer",
  "priority": "Integer",
  "startDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": "Boolean",
  "previewType": "String",
  "completedDateTime": "String (timestamp)",
  "completedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "referenceCount": "Integer",
  "checklistItemCount": "Integer",
  "activeChecklistItemCount": "Integer",
  "appliedCategories": {
    "@odata.type": "microsoft.graph.plannerAppliedCategories"
  },
  "assignments": {
    "@odata.type": "microsoft.graph.plannerAssignments"
  },
  "conversationThreadId": "String",
  "creationSource": {
    "@odata.type": "microsoft.graph.plannerTaskCreation"
  },
  "businessScenarioProperties": {
    "@odata.type": "microsoft.graph.businessScenarioProperties"
  },
  "target": {
    "@odata.type": "microsoft.graph.businessScenarioTaskTargetBase"
  }
}
```

