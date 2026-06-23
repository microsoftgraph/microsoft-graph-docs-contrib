---
title: "List distributionLists"
description: "Get a list of the distributionList objects in the user's mailbox."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List distributionLists

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [distributionList](../resources/distributionlist.md) objects in the user's mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_distributionlists" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-distributionlists-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/distributionLists
GET /users/{id | userPrincipalName}/distributionLists
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderby`, `$top`, `$skip`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [distributionList](../resources/distributionlist.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_distributionlists"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/distributionLists
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-distributionlists-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.distributionList)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/distributionLists",
  "value": [
    {
      "@odata.type": "#microsoft.graph.distributionList",
      "id": "AAMkAGI2THVSAAA=",
      "changeKey": "CQAAABYAAABE",
      "createdDateTime": "2024-03-15T10:30:00Z",
      "lastModifiedDateTime": "2024-03-20T14:00:00Z",
      "categories": [],
      "displayName": "Project Team"
    }
  ]
}
```
