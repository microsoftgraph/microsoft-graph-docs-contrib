---
title: "List ownedObjects"
description: "Get the list of directory objects that are owned by the user."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# List ownedObjects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of directory objects that are owned by the user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_ownedobjects" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-ownedobjects-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/ownedObjects
GET /users/{id | userPrincipalName}/ownedObjects
```
## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.
## Example
##### Request
Here's an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ownedobjects_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/ownedObjects
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-ownedobjects-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-ownedobjects-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-ownedobjects-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-ownedobjects-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-ownedobjects-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-ownedobjects-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-ownedobjects-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-ownedobjects-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here's an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.group",
            "id": "6796bed1-721f-4734-9cf7-1df0d0f4e0d4",
            "classification": "Confidential",
            "groupTypes": [
                "Unified"
            ],
            "resourceBehaviorOptions": [
                "HideGroupInOutlook",
                "SubscribeMembersToCalendarEventsDisabled",
                "WelcomeEmailDisabled"
            ],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false
        },
        {
            "@odata.type": "#microsoft.graph.group",
            "id": "654c426a-2cdb-426c-9fd8-3e41014339ef",
            "classification": null,
            "groupTypes": [
                "Unified"
            ],
            "resourceBehaviorOptions": [
                "HideGroupInOutlook",
                "SubscribeMembersToCalendarEventsDisabled",
                "WelcomeEmailDisabled"
            ],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List ownedObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
