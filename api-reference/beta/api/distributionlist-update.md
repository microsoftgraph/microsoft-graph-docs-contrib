---
title: "Update distributionList"
description: "Update the properties of a distributionList object."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Update distributionList

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [distributionList](../resources/distributionlist.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "distributionlist_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/distributionlist-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/distributionLists/{distributionList-id}
PATCH /users/{id | userPrincipalName}/distributionLists/{distributionList-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the distribution list. Optional.|
|members|[member](../resources/member.md) collection|The list of members in the distribution list. This replaces the entire member list. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [distributionList](../resources/distributionlist.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_distributionlist"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/distributionLists/AAMkAGI2THVSAAA=
Content-Type: application/json

{
  "displayName": "Updated Project Team"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-distributionlist-javascript-snippets.md)]
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
  "changeKey": "CQAAABYAAABG",
  "createdDateTime": "2024-03-15T10:30:00Z",
  "lastModifiedDateTime": "2024-03-25T09:45:00Z",
  "categories": [],
  "displayName": "Updated Project Team",
  "members": [
    {
      "@odata.type": "#microsoft.graph.member",
      "displayName": "Adele Vance",
      "key": "AdeleV@contoso.com",
      "routingType": "SMTP",
      "recipientType": "mailbox"
    },
    {
      "@odata.type": "#microsoft.graph.member",
      "displayName": "Alex Wilber",
      "key": "AlexW@contoso.com",
      "routingType": "SMTP",
      "recipientType": "mailbox"
    }
  ]
}
```
