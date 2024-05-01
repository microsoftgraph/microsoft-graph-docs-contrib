---
title: "List responses"
description: "Get the approvalItemResponse resources from the responses navigation property."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "Approvals"
doc_type: apiPageType
---

# List responses

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the approvalItemResponse resources from the responses navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-list-responses-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-list-responses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}/responses
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

If successful, this method returns a `200 OK` response code and a collection of [approvalItemResponse](../resources/approvalitemresponse.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_approvalitemresponse"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/{approvalItemId}/responses
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.approval.approvalItemResponse)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.approval.approvalItemResponse",
      "createdDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.approvalIdentitySet"
      },
      "comments": "String",
      "response": "String",
      "owners": [
        {
          "@odata.type": "microsoft.graph.approvalIdentitySet"
        }
      ]
    }
  ]
}
```

