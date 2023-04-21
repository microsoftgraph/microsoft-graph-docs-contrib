---
title: "Add owners"
description: "Add a user or service principal to a Microsoft 365 or security group's owners. The owners are a set of users or service principals who are allowed to modify the group object."
ms.localizationpriority: medium
author: "psaffaie"
ms.prod: "groups"
doc_type: apiPageType
---

# Add owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a user or service principal to a Microsoft 365 or security group's owners. The owners are a set of users or service principals who are allowed to modify the group object.

> **Important:** If you update the group owners and you created a team for the group, it can take up to 2 hours for the owners to be synchronized with Microsoft Teams. Also, if you want the owner to be able to make changes in a team - for example, by creating a Planner plan - the owner also needs to be added as a group/team member.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------- |
| Delegated (work or school account)     | Group.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                               |
| Application                            | Group.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/owners/$ref
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation with the **@odata.id** of a [user](../resources/user.md) or [servicePrincipal](../resources/serviceprincipal.md) object to be added.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body. This method returns a `400 Bad Request` response code when the object is already a member of the group. This method returns a `404 Not Found` response code when the object being added doesn't exist.

## Example

### Request

The following is an example of the request that adds a user as a group owner.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_owner_from_group"
}-->

```http
POST https://graph.microsoft.com/beta/groups/{id}/owners/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/users/{id}"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-owner-from-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-owner-from-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-owner-from-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-owner-from-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-owner-from-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-owner-from-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation with the **@odata.id** of a [user](../resources/user.md) or [servicePrincipal](../resources/user.md) object to be added.

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

## See also

- [Add member to team](team-post-members.md)
- [Update member's role in team](team-update-members.md)
- [Remove member from team](team-delete-members.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create owner",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
