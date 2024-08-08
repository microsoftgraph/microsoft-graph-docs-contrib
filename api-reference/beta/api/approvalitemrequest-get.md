---
title: "Get approvalItemRequest"
description: "Read the properties and relationships of an approvalItemRequest object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# Get approvalItemRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalItemRequest](../resources/approvalitemrequest.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitemrequest-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitemrequest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}/requests/{approvalItemRequestId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [approvalItemRequest](../resources/approvalitemrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvalitemrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/7d096f68-c4fe-4967-99dc-df0248c33a77/requests/817d2849-c546-47f0-9c38-1a1a38ac6648
```


### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalItemRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/approval/approvalItems('7d096f68-c4fe-4967-99dc-df0248c33a77')/requests/$entity",
    "id": "817d2849-c546-47f0-9c38-1a1a38ac6648",
    "createdDateTime": "2024-05-14T17:59:23Z",
    "isReassigned": false,
    "reassignedFrom": null,
    "approver": {
        "group": null,
        "user": {
            "id": "fff4d3ad-2d6b-4294-a8d6-bdaab2ead051",
            "displayName": null
        }
    }
}
```

