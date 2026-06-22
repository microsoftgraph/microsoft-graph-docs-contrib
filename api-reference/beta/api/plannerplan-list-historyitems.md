---
title: "List historyItems"
description: "Get the history of changes made to tasks within a plan."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List historyItems

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [history](../resources/plannerhistoryitem.md) of changes made to tasks within a [plan](../resources/plannerplan.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplan_list_historyitems" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-list-historyitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans/{plan-id}/historyItems
```

## Optional query parameters

This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

Use `$filter` on the **occurredDateTime** property to retrieve history items within a specific time range.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerHistoryItem](../resources/plannerhistoryitem.md) objects in the response body.

## Examples

### Request

The following example shows how to get task [history items](../resources/plannerhistoryitem.md) for a plan with a date filter.

<!-- {
  "blockType": "request",
  "name": "list_plannerhistoryitem_datefilter"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans/nETqF5FS2LkCp935s-FIFm2QAFkHM/historyItems?$filter=occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerHistoryItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/plans('nETqF5FS2LkCp935s-FIFm2QAFkHM')/historyItems",
  "value": [
    {
      "@odata.type": "#microsoft.graph.taskHistoryItem",
      "id": "historyItem-id-1",
      "planId": "nETqF5FS2LkCp935s-FIFm2QAFkHM",
      "entityId": "dYsWHy7-WEGMQsMaPBv_9ZUAOzQz",
      "entityType": "task",
      "eventType": "created",
      "occurredDateTime": "2026-01-12T14:16:26.5896957Z",
      "actor": {
        "user": {
          "displayName": null,
          "id": "6699294c-9300-4ad8-a768-af3407b5e0fe"
        },
        "application": {
          "displayName": null,
          "id": "09abbdfd-ed23-44ee-a2d9-a627a41c90f3"
        }
      },
      "oldData": null,
      "newData": {
        "createdBy": {
          "user": {
            "displayName": null,
            "id": "6699294c-9300-4ad8-a768-af3407b5e0fe"
          },
          "application": {
            "displayName": null,
            "id": "09abbdfd-ed23-44ee-a2d9-a627a41c90f3"
          }
        },
        "bucketId": "0LHuWF3PrUqKYzq-TcR3oJUADFn8",
        "isArchived": false,
        "title": "Initial Task Title",
        "orderHint": "8584333795589189673P,",
        "percentComplete": 0,
        "priority": 5
      }
    },
    {
      "@odata.type": "#microsoft.graph.taskHistoryItem",
      "id": "historyItem-id-2",
      "planId": "nETqF5FS2LkCp935s-FIFm2QAFkHM",
      "entityId": "dYsWHy7-WEGMQsMaPBv_9ZUAOzQz",
      "entityType": "task",
      "eventType": "updated",
      "occurredDateTime": "2026-01-12T15:16:26.5896957Z",
      "actor": {
        "user": {
          "displayName": null,
          "id": "6699294c-9300-4ad8-a768-af3407b5e0fe"
        },
        "application": {
          "displayName": null,
          "id": "09abbdfd-ed23-44ee-a2d9-a627a41c90f3"
        }
      },
      "oldData": {
        "title": "Initial Task Title",
        "percentComplete": 0
      },
      "newData": {
        "title": "Updated Task Title",
        "percentComplete": 50
      }
    }
  ]
}
```
