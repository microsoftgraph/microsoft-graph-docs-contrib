---
title: "Update businessScenarioTask"
description: "Update the properties of a businessScenarioTask object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update businessScenarioTask
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [businessScenarioTask](../resources/businessscenariotask.md) object.

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
PATCH /solutions/businessScenarios/{businessScenarioId}/planner/tasks/{businessScenarioTaskId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|planId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|bucketId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|title|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Required.|
|orderHint|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|assigneePriority|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|percentComplete|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|priority|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|dueDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|hasDescription|Boolean|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|previewType|plannerPreviewType|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`. Optional.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|completedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|referenceCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|checklistItemCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|activeChecklistItemCount|Int32|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|conversationThreadId|String|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|creationSource|[plannerTaskCreation](../resources/plannertaskcreation.md)|**TODO: Add Description** Inherited from [plannerTask](../resources/plannertask.md). Optional.|
|businessScenarioProperties|[businessScenarioProperties](../resources/businessscenarioproperties.md)|**TODO: Add Description** Optional.|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [businessScenarioTask](../resources/businessscenariotask.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_businessscenariotask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/businessScenarios/{businessScenarioId}/planner/tasks/{businessScenarioTaskId}
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
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

