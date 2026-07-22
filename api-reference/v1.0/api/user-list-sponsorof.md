---
title: "List sponsorOf"
description: "Get the list of directory objects that a user sponsors."
author: "Jackson-Woods"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 07/07/2026
---

# List sponsorOf

<!-- markdownlint-disable MD024 -->

Namespace: microsoft.graph

Get the directory objects that a user sponsors. Sponsored objects can include users, agent users, agent blueprints, agent blueprint principals, and agent identities. Because a group can also be a sponsor, the response includes both objects the user directly sponsors and objects the user sponsors through group membership.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_sponsorof" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-sponsorof-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/sponsorOf
GET /users/{id | userPrincipalName}/sponsorOf
```

## Optional query parameters

This method supports the `$filter`, `$count`, `$select`, `$expand`, `$top`, and `$skip` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header        | Value |
|:--------------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Example 1: List all entities that a user sponsors

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sponsorof"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsorOf
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sponsorof-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "displayName": "Guest User 1",
      "userPrincipalName": "guestuser1_example.com#EXT#@contoso.onmicrosoft.com",
      "userType": "Guest"
    },
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "2fe96d23-5dc6-4f35-8222-0426a8c115c6",
      "displayName": "Guest User 2",
      "userPrincipalName": "guestuser2_example.com#EXT#@contoso.onmicrosoft.com",
      "userType": "Guest"
    }
  ]
}
```

### Example 2: List all entities that a user sponsors, filtered by type

#### Request

The following example shows a request that filters the sponsored objects by user type.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sponsorof_filter"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsorOf?$filter=microsoft.graph.user/userType eq 'Guest'
ConsistencyLevel: eventual
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sponsorof-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "displayName": "Guest User 1",
      "userPrincipalName": "guestuser1_example.com#EXT#@contoso.onmicrosoft.com",
      "userType": "Guest"
    }
  ]
}
```
