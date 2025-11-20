---
title: "List members"
description: "Get a list of users with assigned roles in Viva Engage."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List members

Namespace: microsoft.graph

Get a list of users with assigned [roles](../resources/engagementrole.md) in Viva Engage.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "engagementrole_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/engagementrole-list-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/roles/{engagementRoleId}/members
```
<!-- GET /me/employeeExperience/assignedRoles/{engagementRoleId}/members -->

## Optional query parameters

This method supports the `$filter` (`eq`), `$select`, and `$count` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters). Only the **userId** and **id** properties support the `$filter` parameter.

The following table shows how you can use OData query parameters with this API. 

| Description | HTTP request |
|:---|:---|
| Filter role members by user ID | `GET /employeeExperience/roles/{engagementRoleId}/members?$filter=userId eq 'e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01'` |
| Include the total count of role members       | `GET /employeeExperience/roles/{engagementRoleId}/members?$count=true` |
| Get only the **id** and **createdDateTime** properties for a list of role members | `GET /employeeExperience/roles/{engagementRoleId}/members?$select=id,createdDateTime` |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementRoleMember](../resources/engagementrolemember.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_engagementrolemember"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/roles/a40473a5-0fb4-a250-e029-f6fe33d07733/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-engagementrolemember-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-engagementrolemember-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-engagementrolemember-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-engagementrolemember-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-engagementrolemember-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-engagementrolemember-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementRoleMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.engagementRoleMember",
      "id": "a40473a5-0fb4-a250-e029-f6fe33d07733",
      "userId": "e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01",
      "createdDateTime": "2025-09-22T14:03:00Z"
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List members",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: /api/engagementrole-list-members.md:
      Failed to parse enumeration values for type microsoft.graph.list. Table requires a column header named one of the following: Member, Name, Value"
  ]
}-->
