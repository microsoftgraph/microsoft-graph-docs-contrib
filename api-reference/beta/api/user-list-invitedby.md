---
title: "List invitedBy"
description: "Get the user or service principal that invited the specified user into the tenant."
author: "sponnada"
ms.localizationpriority: medium
ms.subservice: "entra-users"
doc_type: apiPageType
ms.date: 05/28/2024
---

# List invitedBy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [user](../resources/user.md) or [servicePrincipal](../resources/serviceprincipal.md) that invited the specified user into the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-list-invitedby-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-list-invitedby-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /me/invitedBy
GET /users/{userId}/invitedBy
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a single [directoryObject](../resources/directoryobject.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_directoryobject"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/37b16a99-97fe-47fe-9a58-4257059b3463/invitedBy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-directoryobject-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-directoryobject-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-directoryobject-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-directoryobject-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-directoryobject-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-directoryobject-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-directoryobject-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
    {
       "@odata.type": "#microsoft.graph.user",
       "displayName": "Adele Vance",
       "givenName": "Adele",
       "jobTitle": "Retail Manager",
       "mail": "AdeleV@contoso.com",
       "mobilePhone": "+1 425 555 0109",
       "officeLocation": "18/2111",
       "preferredLanguage": "en-US",
       "surname": "Vance",
       "invitedBy": "93636d4a-4d22-4f76-841f-1d4c7ca7de9d",
       "userPrincipalName": "AdeleV@contoso.com",
       "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
    }
    ]
}
```

