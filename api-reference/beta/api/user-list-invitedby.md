---
title: "List invitedBy"
description: "Get the user or application who invited a particular user into the tenant."
author: "sponnada"
ms.localizationpriority: medium
ms.subservice: "entra-users"
doc_type: apiPageType
---

# List invitedBy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the user, or service principal, that invited the specified user into the tenant.

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
``` http
GET /me/invitedBy
GET /users/{userId}/invitedBy
```

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
<!-- {
  "blockType": "request",
  "name": "list_directoryobject"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/37b16a99-97fe-47fe-9a58-4257059b3463/invitedBy
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
    {
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

