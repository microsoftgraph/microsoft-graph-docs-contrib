---
title: "Move plan across containers"
description: "Move a **plannerPlan** object from one plannerPlanContainer to another. Currently the only allowed move is from User to Group container."
ms.localizationpriority: medium
author: "vasrinwork"
ms.prod: "planner"
doc_type: apiPageType
---

# Move plan across containers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Move a [plannerPlan](../resources/plannerplan.md) object from one [plannerPlanContainer](../resources/plannerplancontainer.md) to another. Currently the only allowed move is from a User container to a Group container.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Tasks.Read, Tasks.ReadWrite    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Tasks.Read.All, Tasks.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/planner/plans/planId/moveToContainer
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|
| If-Match  | Last known ETag value for the plannerPlan to be moved. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerPlanContainer](../resources/plannerplancontainer.md) object.

## Response

If successful, this API returns a `200 OK` response code and a [plannerPlan](../resources/plannerplan.md) object in the response body.

## Example
### Request
The following example demonstrates a request to move a Plan from a User Container to a Group Container.

<!-- {
  "blockType": "request",
  "name": "plannerplan_move_to_container_"
}-->
```http
POST https://graph.microsoft.com/beta/planner/plans/planId/moveToContainer
Content-type: application/json
If-Match: "string"

{
    "container": {
        "containerId": "groupId",
        "type": "group"
    }
}
```

### Response
The following example displays a response to a request to move a Plan from a User Container to a Group Container.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlan"
}-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#plans/$entity",
    "@odata.etag": "W/\"JzEtUGxhbiAgQEBAQEBAQEBAQEBAQEBARCc=\"",
    "title": "The Plan",
    "id": "planId",
    "container": {
        "containerId": "groupId",
        "type": "group",
        "url": "https://graph.microsoft.com/beta/groups/groupId"

    }
}
```