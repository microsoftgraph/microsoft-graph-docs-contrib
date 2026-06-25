---
title: "distributionList: deleteMembers"
description: "Remove members from a distributionList."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# distributionList: deleteMembers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove members from a [distributionList](../resources/distributionlist.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "distributionlist_deletemembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/distributionlist-deletemembers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/distributionLists/{distributionList-id}/deleteMembers
POST /users/{id | userPrincipalName}/distributionLists/{distributionList-id}/deleteMembers
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|members|[member](../resources/member.md) collection|The list of members to remove from the distribution list. Each member must include an **emailAddress** to identify the member to remove. Other properties are ignored. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [distributionList](../resources/distributionlist.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "distributionlist_deletemembers"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/distributionLists/AAMkAGI2THVSAAA=/deleteMembers
Content-Type: application/json

{
  "members": [
    {
      "key": "MeganB@contoso.com",
      "routingType": "SMTP",
      "recipientType": "contact"
    }
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/distributionlist-deletemembers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.distributionList"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/distributionLists/$entity",
  "id": "AAMkAGI2THVSAAA=",
  "displayName": "Project Team",
  "lastModifiedDateTime": "2024-03-17T11:15:00Z"
}
```
