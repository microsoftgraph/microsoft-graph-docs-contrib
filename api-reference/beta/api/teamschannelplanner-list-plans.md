---
title: "List plans"
description: "Get a list of plannerPlan objects owned by a shared channel in Teams."
ms.localizationpriority: medium
author: "DanluCui"
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/29/2025
---

# List plans

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [plannerPlan](../resources/plannerplan.md) objects owned by a shared [channel](../resources/channel.md) in Teams.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamschannelplanner_list_plans" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamschannelplanner-list-plans-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels/{channel-id}/planner/plans
```

### Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerPlan](../resources/plannerplan.md) objects in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the `403` and `404` responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_plans_owned_by_channel",
  "sampleKeys" : ["a738af50-90f1-472c-b3c3-a468f88ceaba", "19:yVS-hfmJ8w61Vu4oehlAr-y9G0eeyY11D8elrrDSvCU1@thread.tacv2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/a738af50-90f1-472c-b3c3-a468f88ceaba/channels/19:yVS-hfmJ8w61Vu4oehlAr-y9G0eeyY11D8elrrDSvCU1@thread.tacv2/planner/plans
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-plans-owned-by-channel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-plans-owned-by-channel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-plans-owned-by-channel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-plans-owned-by-channel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-plans-owned-by-channel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-plans-owned-by-channel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-plans-owned-by-channel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlan)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.etag": "W/\"JzEtUGxhbiAgQEBAQEBAQEBAQEBAQEBARCc=\"",
      "createdDateTime": "2025-01-14T18:03:25.8457422Z",
      "isArchived": false,
      "owner": "ba2b2488-cb8c-4dbc-882e-a9a8311bfee9",
      "title": "travel plan",
      "id": "TQZYwVBC4E6BUIg4nfSnfJUADdBY",
      "createdBy": {
        "application": {
          "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064"
        },
        "user": {
          "id": "ba2b2488-cb8c-4dbc-882e-a9a8311bfee9"
        }
      },
      "container": {
        "containerId": "a738af50-90f1-472c-b3c3-a468f88ceaba/channels/19:yVS-hfmJ8w61Vu4oehlAr-y9G0eeyY11D8elrrDSvCU1@thread.tacv2",
        "type": "teamsChannel",
        "url": "https://graph.microsoft.com/beta/teams/a738af50-90f1-472c-b3c3-a468f88ceaba/channels/19:yVS-hfmJ8w61Vu4oehlAr-y9G0eeyY11D8elrrDSvCU1@thread.tacv2"
      }
    }
  ]
}
```

<!-- uuid: 3da1192e-9af9-47d4-b32c-1ba82ddabcd1
2025-01-15 22:58:43 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List plans",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
