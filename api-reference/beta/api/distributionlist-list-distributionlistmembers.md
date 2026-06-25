---
title: "List distributionListMembers"
description: "Get the expanded member list of a distributionList."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List distributionListMembers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the expanded member list of a [distributionList](../resources/distributionlist.md). Each member contains detailed information including the resolved display name, email address, and recipient type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "distributionlist_list_distributionlistmembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/distributionlist-list-distributionlistmembers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/distributionLists/{distributionList-id}/distributionListMembers
GET /users/{id | userPrincipalName}/distributionLists/{distributionList-id}/distributionListMembers
```

## Optional query parameters

This method supports the `$select`, `$top`, `$skip`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [distributionListMember](../resources/distributionlistmember.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_distributionlistmembers"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/distributionLists/AAMkAGI2THVSAAA=/distributionListMembers
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-distributionlistmembers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.distributionListMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/distributionLists('AAMkAGI2THVSAAA=')/distributionListMembers",
  "value": [
    {
      "id": "AAMkAGI2member1",
      "displayName": "Adele Vance",
      "recipientType": "mailbox",
      "contactId": null
    },
    {
      "id": "AAMkAGI2member2",
      "displayName": "Alex Wilber",
      "recipientType": "mailbox",
      "contactId": "BBNkAGI2..."
    }
  ]
}
```
