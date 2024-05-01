---
title: "Get approvalItemResponse"
description: "Read the properties and relationships of an approvalItemResponse object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "Approvals"
doc_type: apiPageType
---

# Get approvalItemResponse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalItemResponse](../resources/approvalitemresponse.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitemresponse-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitemresponse-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}/responses/{approvalItemResponseId}
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

If successful, this method returns a `200 OK` response code and an [approvalItemResponse](../resources/approvalitemresponse.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvalitemresponse"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/{approvalItemId}/responses/{approvalItemResponseId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.approval.approvalItemResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

