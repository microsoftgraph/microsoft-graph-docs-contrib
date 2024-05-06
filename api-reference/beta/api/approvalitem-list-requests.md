---
title: "List requests"
description: "Get the approvalItemRequest resources from the requests navigation property."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: apiPageType
---

# List requests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the approvalItemRequest resources from the requests navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-list-requests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-list-requests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}/requests
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [approvalItemRequest](../resources/approvalitemrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_approvalitemrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/{approvalItemId}/requests
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.approval.approvalItemRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.approval.approvalItemRequest",
      "createdDateTime": "String (timestamp)",
      "approver": {
        "@odata.type": "microsoft.graph.approvalIdentitySet"
      },
      "reassignedFrom": {
        "@odata.type": "microsoft.graph.approvalIdentitySet"
      },
      "isReassigned": "Boolean"
    }
  ]
}
```

