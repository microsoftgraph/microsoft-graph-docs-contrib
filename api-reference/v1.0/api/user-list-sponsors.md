---
title: "List sponsors"
description: "Get a user's sponsors."
ms.localizationpriority: medium
author: "sadia353"
ms.prod: "users"
doc_type: apiPageType
---

# List sponsors

Namespace: microsoft.graph

Get a user's sponsors. Sponsors are users and groups that are responsible for this guest's privileges in the tenant and for keeping the guest's information and access up to date.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_sponsors" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-sponsors-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

Get sponsors.
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/sponsors
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. You can specify `$select` inside `$expand` to select the individual sponsor's properties: `$expand=sponsors($select=id,displayName)`.

## Request headers

| Header           | Value                                                                                          |
| :--------------- | :--------------------------------------------------------------------------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md) and [group](../resources/group.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_sponsors"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsors
```

### Response

The following example shows the response.
>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "263a1289-8282-4bf7-91f7-550d9bba8c02",
            "displayName": "Sara Davis",
            "jobTitle": "Finance VP",
            "mail": "SaraD@contoso.com",
            "userPrincipalName": "SaraD@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.group",
            "id": "08143e93-989e-4771-ac78-803bcdac52d2",
            "mail": "groupforsponsors@contoso.com",
            "mailEnabled": true,
            "mailNickname": "groupforsponsors",
            "securityEnabled": true
        }
    ]
}
```
