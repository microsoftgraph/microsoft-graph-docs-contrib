---
title: "List sponsors"
description: "Get a user's sponsors."
ms.localizationpriority: medium
author: "sadia353"
ms.prod: "users"
doc_type: apiPageType
ms.topic: reference
---

# List sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a user's sponsors. Sponsors are users and groups that are responsible for this guest's privileges in the tenant and for keeping the guest's information and access up to date.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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

The following example shows a request to get the sponsors.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sponsors"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sponsors-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-sponsors-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sponsors-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sponsors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sponsors-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-sponsors-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-sponsors-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
"@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
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
