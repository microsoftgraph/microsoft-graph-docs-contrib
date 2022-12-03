---
title: "Create businessScenarioTask"
description: "Create a new businessScenarioTask object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create businessScenarioTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [businessScenarioTask](../resources/businessscenariotask.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioData.ReadWrite.OwnedBy|
|Delegated (personal Microsoft account)|Not supported.|
|Application| BusinessScenarioData.ReadWrite.OwnedBy|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/businessScenarios/{businessScenarioId}/planner/tasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [businessScenarioTask](../resources/businessscenariotask.md) object.

You can specify the following properties when you create a **businessScenarioTask**.

|Property|Type|Description|
|:---|:---|:---|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|The categories to which the task has been applied. For possible values, see [plannerAppliedCategories](../resources/plannerappliedcategories.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assigneePriority|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|The set of assignees the task is assigned to. Inherited from [plannerTask](../resources/plannertask.md).|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. The [format validation](../resources/tasks-identifiers-disclaimer.md) is done on the service. Inherited from [plannerTask](../resources/plannertask.md).|
|businessScenarioProperties|[businessScenarioProperties](../resources/businessscenarioproperties.md)|Scenario-specific properties of the task. **externalObjectId** and **externalBucketId** properties must be specified when creating a task. Required.|
|conversationThreadId|String|Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the **group**. Inherited from [plannerTask](../resources/plannertask.md).|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|orderHint|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. Inherited from [plannerTask](../resources/plannertask.md).|
|planId|String|Identifier of the plan to which the task belongs. Inherited from [plannerTask](../resources/plannertask.md).|
|priority|Int32|Priority of the task. Valid range of values is between `0` and `10` (inclusive), with increasing value being lower priority (`0` has the highest priority and `10` has the lowest priority).  Currently, Planner interprets values `0` and `1` as "urgent", `2`, `3`, and `4` as "important", `5`, `6`, and `7` as "medium", and `8`, `9`, and `10` as "low".  Currently, Planner sets the value `1` for "urgent", `3` for "important", `5` for "medium", and `9` for "low". Inherited from [plannerTask](../resources/plannertask.md).|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|Target of the task that specifies where the task should be placed. Required.|
|title|String|Title of the task. Inherited from [plannerTask](../resources/plannertask.md).|

## Response

If successful, this method returns a `201 Created` response code and a [businessScenarioTask](../resources/businessscenariotask.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_businessscenariotask_from_",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenarioTask",
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

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessScenarioTask"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenarioTask",
  "id": "657127e8-b792-bd90-d937-82b7465d1c11",
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
