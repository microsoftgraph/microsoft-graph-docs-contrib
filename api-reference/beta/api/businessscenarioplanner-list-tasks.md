---
title: "List businessScenarioTasks"
description: "Get a list of the businessScenarioTask objects and their properties."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List businessScenarioTasks
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [businessScenarioTask](../resources/businessscenariotask.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioData.Read.OwnedBy, BusinessScenarioData.ReadWrite.OwnedBy|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BusinessScenarioData.Read.OwnedBy, BusinessScenarioData.ReadWrite.OwnedBy|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). You can query tasks with their context ID or location as filters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [businessScenarioTask](../resources/businessscenariotask.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks
```

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.businessScenarioTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
