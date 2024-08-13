---
title: "List approvalItem objects"
description: "Get a list of the approvalItem objects and their properties."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# List approvalItem objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [approvalItem](../resources/approvalitem.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalsolution-list-approvalitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-list-approvalitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems
```

## Optional query parameters

This method supports the `$filter`, `$orderby`, `$top`, `$count`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.
If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [approvalItem](../resources/approvalitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_approvalitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems
```


### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.approvalItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#approvalItem",
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/approval/approvalItems?$skiptoken=RFNwdAIAAQAAABc6X3BvZHBzcWxAbWljcm9zb2Z0LmNvbSlVc2VyX2FhOWVlOTdlLTk1M2YtNGNlNy05OTBkLTExMTYyOTkzYjQxN7kAAAAAAAAAAAAA",
  "value": [
    {
      "id": "d3a7405e-452a-47e0-9c35-9335225ba55d",
      "state":"Pending",
      "viewPoint": {
        "roles": ["Owner"]
      },
      "owner":{
        "user": {
            "displayName": "Lilli Allik",
            "id": "f4d6b152-d3c6-4c27-9bc6-1cd5cdcb8473"
        }
      },
      "approvalType": "awaitAll",
      "displayName":"Title of approval",
      "description":"Details of approval",
      "result":null,
      "allowCancel":true,
      "allowEmailNotification": true,
      "createdDateTime":"2022-04-12T20:51:19Z",
      "completedDateTime":null,
      "responseOptions":[
        "Approve",
        "Reject"
      ]
    },
    {
      "id": "d3a7405e-452a-47e0-9c35-9335225ba55d",
      "state":"Completed",
      "viewPoint": {
        "roles": ["Owner"]
      },
      "owner":{
        "user": {
            "id": "39d1a7fb-5f54-4c89-b513-241683718c9b",
            "displayName": "Jana Pihlak"
        }
      },
      "approvalType": "basic",
      "displayName":"Title of approval",
      "description":"Details of approval",
      "result":"Approve",
      "allowCancel":true,
      "allowEmailNotification": false,
      "createdDateTime":"2022-04-12T20:51:19Z",
      "completedDateTime":"2022-04-12T20:51:19Z",
      "responseOptions":[
        "Approve",
        "Reject"
      ]
    }
  ]
}
```

