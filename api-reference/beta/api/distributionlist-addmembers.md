---
title: "distributionList: addMembers"
description: "Add members to a distributionList."
author: "rwaithera"
ms.date: 08/03/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# distributionList: addMembers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add members to a [distributionList](../resources/distributionlist.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "distributionlist_addmembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/distributionlist-addmembers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/distributionLists/{distributionList-id}/addMembers
POST /users/{id | userPrincipalName}/distributionLists/{distributionList-id}/addMembers
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
|members|[member](../resources/member.md) collection|The members to add to the distribution list. Each member must include **type** and either **key**, **memberId**, or both. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [distributionList](../resources/distributionlist.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "distributionlist_addmembers"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/distributionLists/AAMkAGI2THVSAAA=/addMembers
Content-Type: application/json

{
  "members": [
    {
      "displayName": "Megan Bowen",
      "key": "MeganB@contoso.com",
      "type": "mailbox"
    }
  ]
}
```

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
  "lastModifiedDateTime": "2024-03-17T11:00:00Z"
}
```
