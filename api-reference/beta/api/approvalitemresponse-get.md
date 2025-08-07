---
title: "Get approvalItemResponse"
description: "Read the properties and relationships of an approvalItemResponse object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Get approvalItemResponse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalItemResponse](../resources/approvalitemresponse.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approvalitemresponse_get" } -->
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

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approvalitemresponse"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/7d096f68-c4fe-4967-99dc-df0248c33a77/responses/9d4c5640-1da7-4739-924f-d10b70c734c1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approvalitemresponse-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approvalitemresponse-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approvalitemresponse-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approvalitemresponse-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approvalitemresponse-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-approvalitemresponse-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalItemResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/approval/approvalItems('7d096f68-c4fe-4967-99dc-df0248c33a77')/responses/$entity",
  "id":"9d4c5640-1da7-4739-924f-d10b70c734c1",
  "response":"Approve",
  "comments":"Approve this request",
  "createdBy":{
      "user": {
          "displayName": "Jana Pihlak",
          "id": "f4d6b152-d3c6-4c27-9bc6-1cd5cdcb8473"
        }
  },
  "createdDateTime":"2022-04-12T20:51:19Z",
  "onBehalfOf":[
    {
        "user":{
          "id":"39d1a7fb-5f54-4c89-b513-241683718c9b",
          "displayName":"Lilli Allik"
        }
    }
  ]
}
```

