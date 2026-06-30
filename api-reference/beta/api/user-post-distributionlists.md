---
title: "Create distributionList"
description: "Create a new distributionList in the user's mailbox."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Create distributionList

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [distributionList](../resources/distributionlist.md) in the user's mailbox.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_post_distributionlists" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-post-distributionlists-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/distributionLists
POST /users/{id | userPrincipalName}/distributionLists
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [distributionList](../resources/distributionlist.md) object.

You can specify the following properties when you create a **distributionList**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the distribution list. Required.|
|members|[member](../resources/member.md) collection|The list of members to add to the distribution list. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [distributionList](../resources/distributionlist.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_distributionlist"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/distributionLists
Content-Type: application/json

{
  "displayName": "Project Team",
  "members": [
    {
      "displayName": "Adele Vance",
      "emailAddress": "AdeleV@contoso.com",
      "recipientType": "mailbox"
    },
    {
      "displayName": "Alex Wilber",
      "emailAddress": "AlexW@contoso.com",
      "recipientType": "mailbox"
    }
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-distributionlist-javascript-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/distributionLists/$entity",
  "id": "AAMkAGI2THVSAAA=",
  "changeKey": "CQAAABYAAABE",
  "createdDateTime": "2024-03-15T10:30:00Z",
  "lastModifiedDateTime": "2024-03-15T10:30:00Z",
  "categories": [],
  "displayName": "Project Team",
  "members": [
    {
      "@odata.type": "#microsoft.graph.member",
      "displayName": "Adele Vance",
      "emailAddress": "AdeleV@contoso.com",
      "recipientType": "mailbox"
    },
    {
      "@odata.type": "#microsoft.graph.member",
      "displayName": "Alex Wilber",
      "emailAddress": "AlexW@contoso.com",
      "recipientType": "mailbox"
    }
  ]
}
```
