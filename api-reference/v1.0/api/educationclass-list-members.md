---
title: "List members of an educationClass"
description: "Retrieves the teachers and students for a class."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List members of an educationClass

Namespace: microsoft.graph

Retrieves the [educationUser](../resources/educationuser.md) members of an [educationClass](../resources/educationclass.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-list-members-permissions.md)]

> [!NOTE]
> Note that if the delegated token is used, members can only see information about their own classes.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/members
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$search`, `$count`, and `$filter`.

When items are added or updated for this resource, they are specially indexed for use with the `$count` and `$search` query parameters. There can be a slight delay between when an item is added or updated and when it is available in the index.

For more information on OData query options, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationUser](../resources/educationuser.md) objects in the response body.

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_members"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/7e4ec76c-8276-43ef-ba10-9aaa197cb212/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-educationclass-members-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-members-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-members-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationUser",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationUser)",
  "value": [
    {
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "accountEnabled": true,
      "displayName": "Adele Vance",
      "givenName": "Adele",
      "surname": "Vance",
      "userPrincipalName": "AdeleV@contoso.com",
      "userType": "Member",
      "primaryRole": "teacher",
      "onPremisesInfo": {
        "immutableId": null
      },
      "teacher": {}
    },
    {
      "id": "b66ecf79-a093-4d51-86e0-efcc4531f37a",
      "accountEnabled": true,
      "displayName": "Christie Cline",
      "givenName": "Christie",
      "surname": "Cline",
      "userPrincipalName": "ChristieC@contoso.com",
      "userType": "Member",
      "primaryRole": "student",
      "onPremisesInfo": {
        "immutableId": null
      },
      "student": {}
    },
    {
      "id": "f5289423-7233-4d60-831a-fe107a8551cc",
      "accountEnabled": true,
      "displayName": "Ben Walters",
      "givenName": "Ben",
      "surname": "Walters",
      "userPrincipalName": "BenW@contoso.com",
      "userType": "Member",
      "primaryRole": "student",
      "onPremisesInfo": {
        "immutableId": null
      },
      "student": {}
    },
    {
      "id": "48d31887-5fad-4d73-a9f5-3c356e68a038",
      "accountEnabled": true,
      "displayName": "Megan Bowen",
      "givenName": "Megan",
      "surname": "Bowen",
      "userPrincipalName": "MeganB@contoso.com",
      "userType": "Member",
      "primaryRole": "teacher",
      "onPremisesInfo": {
        "immutableId": null
      },
      "teacher": {}
    },
    {
      "id": "c03e6eaa-b6ab-46d7-905b-73ec7ea1f755",
      "accountEnabled": true,
      "displayName": "Allan Deyoung",
      "givenName": "Allan",
      "surname": "Deyoung",
      "userPrincipalName": "AllanD@contoso.com",
      "userType": "Member",
      "primaryRole": "student",
      "onPremisesInfo": {
        "immutableId": null
      },
      "student": {}
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List members",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
