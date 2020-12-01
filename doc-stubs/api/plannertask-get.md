---
title: "Get plannerTask"
description: "Read the properties and relationships of a plannerTask object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get plannerTask
Namespace: microsoft.graph

Read the properties and relationships of a [plannerTask](../resources/plannertask.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/tasks/{plannerTaskId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [plannerTask](../resources/plannertask.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_plannertask"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/tasks/{plannerTaskId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.plannerTask",
    "id": "bd54a113-a113-bd54-13a1-54bd13a154bd",
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
    }
  }
}
```

