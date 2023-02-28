---
title: "plannerPlan: delta"
description: "Get newly created, updated, or deleted Planner plans in either a group or a Planner roster without having to perform a full read of the entire resource collection."
author: "AnubhavKumarSingh"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: apiPageType
---

# plannerPlan: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created, updated, or deleted Planner [plasn](../resources/plannerplan.md) in either a [group](../resources/group.md) or a Planner [roster](../resources/plannerroster.md) without having to perform a full read of the entire resource collection. For details, see [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Tasks.Read                                  |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Tasks.Read.All                              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /planner/rosters/{plannerRosterId}/plans/delta
GET /groups/{group-id}/planner/plans/delta
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json          |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [plannerPlan](../resources/plannerplan.md) collection in the response body.

## Examples

### Example 1: Get delta on plans in a plannerRoster

The following example shows a request for delta on **plannerPlan** objects contained by a **plannerRoster**.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "plannerplanthis.delta",
  "sampleKeys": ["-W4K7hIak0WlAwgJCn1sEWQABgjH"]
}
-->

```http
GET https://graph.microsoft.com/beta/planner/rosters/-W4K7hIak0WlAwgJCn1sEWQABgjH/plans/delta
```

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlan)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#plannerBucket",
  "@odata.deltaLink": "https://graph.microsoft.com/beta/planner/rosters/('-W4K7hIak0WlAwgJCn1sEWQABgjH')/plans?deltatoken=0%257eaa6c4c81-656f-40e8-a2c5-60f4116fa9a4",
  "value": [
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBASCc=\"",
      "id": "xqQg5FS2LkCp935s-FIFm2QAFkHM",
      "title": "Test plan",
      "container": {
        "@odata.type": "microsoft.graph.plannerPlanContainer",
        "url": "https://graph.microsoft.com/beta/planner/rosters/-W4K7hIak0WlAwgJCn1sEWQABgjH",
        "containerId": "-W4K7hIak0WlAwgJCn1sEWQABgjH",
        "type": "roster"
      }
    }
  ]
}
```

### Example 2: Get delta on plans in a group

The following example shows a request for delta on **plannerPlan** objects contained by a group.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "plannerplanthis.delta",
  "sampleKeys": ["ebf3b108-5234-4e22-b93d-656d7dae5874"]
}
-->

```http
GET https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874/planner/plans/delta
```

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlan)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#plannerBucket",
  "@odata.deltaLink": "https://graph.microsoft.com/beta/groups/('ebf3b108-5234-4e22-b93d-656d7dae5874')/planner/plans?deltatoken=0%257eaa6c4c81-656f-40e8-a2c5-60f4116fa9a4",
  "value": [
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBASCc=\"",
      "id": "xqQg5FS2LkCp935s-FIFm2QAFkHM",
      "title": "Test plan",
      "container": {
         "@odata.type": "microsoft.graph.plannerPlanContainer",
         "url": "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
         "containerId": "ebf3b108-5234-4e22-b93d-656d7dae5874",
         "type": "group"
      }
    }
  ]
}
```
