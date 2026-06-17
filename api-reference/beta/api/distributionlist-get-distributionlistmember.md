---
title: "Get distributionListMember"
description: "Get a single expanded member of a distributionList."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Get distributionListMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a single expanded member of a [distributionList](../resources/distributionlist.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "distributionlist_get_distributionlistmember" } -->
[!INCLUDE [permissions-table](../includes/permissions/distributionlist-get-distributionlistmember-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/distributionLists/{distributionList-id}/distributionListMembers/{distributionListMember-id}
GET /users/{id | userPrincipalName}/distributionLists/{distributionList-id}/distributionListMembers/{distributionListMember-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [distributionListMember](../resources/distributionlistmember.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_distributionlistmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/distributionLists/AAMkAGI2THVSAAA=/distributionListMembers/AAMkAGI2member1
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.distributionListMember"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/distributionLists('AAMkAGI2THVSAAA=')/distributionListMembers/$entity",
  "id": "AAMkAGI2member1",
  "displayName": "Adele Vance",
  "recipientType": "mailbox",
  "contactId": null
}
```
