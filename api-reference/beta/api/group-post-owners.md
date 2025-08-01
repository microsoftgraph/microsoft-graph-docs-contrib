---
title: "Add owners"
description: "Add a user or service principal to a Microsoft 365 or security group's owners. The owners are a set of users or service principals who are allowed to modify the group object."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 05/24/2024
---

# Add owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a user or service principal to a Microsoft 365 or security group's owners. The owners are a set of users or service principals who are allowed to modify the group object.

> **Important:** If you update the group owners and you created a team for the group, it can take up to 2 hours for the owners to be synchronized with Microsoft Teams. Also, if you want the owner to be able to make changes in a team - for example, by creating a Planner plan - the owner also needs to be added as a group/team member.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "group_post_owners" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-post-owners-permissions.md)]

In delegated scenarios, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the required role permission. The following least privileged roles are supported for this operation:

| Microsoft Entra role | Limitations | Key role permission |
|--|--|--|
| Group owners | Can modify all types of group owners | microsoft.directory/groups/owners/update |
| User Administrator | Can modify user owners only | microsoft.directory/groups/owners/update |
| Directory Writers | Can modify user owners only | microsoft.directory/groups/owners/update |
| Groups Administrator | Can modify all types of group owners | microsoft.directory/groups/owners/update |
| Exchange Administrator | Can modify owners of Microsoft 365 groups only | microsoft.directory/groups.unified/owners/update |
| SharePoint Administrator | Can modify owners of Microsoft 365 groups only | microsoft.directory/groups.unified/owners/update |
| Teams Administrator | Can modify owners of Microsoft 365 groups only | microsoft.directory/groups.unified/owners/update |
| Yammer Administrator | Can modify owners of Microsoft 365 groups only | microsoft.directory/groups.unified/owners/update |
| Intune Administrator | Can modify owners of security groups only | microsoft.directory/groups.security/owners/update |
| Knowledge Administrator | Can modify owners of security groups only | microsoft.directory/groups.security/owners/update |
| Knowledge Manager | Can modify owners of security groups only | microsoft.directory/groups.security/owners/update |
| Windows 365 Administrator | Can modify owners of security groups only | microsoft.directory/groups.security/owners/update |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/owners/$ref
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation with the **@odata.id** of a [user](../resources/user.md) or [servicePrincipal](../resources/serviceprincipal.md) object to be added.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body. This method returns a `400 Bad Request` response code when the object is already a member of the group. This method returns a `404 Not Found` response code when the object being added doesn't exist.

## Example

### Request

The following example shows a request that adds a user as a group owner.

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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-owner-from-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation with the **@odata.id** of a [user](../resources/user.md) or [servicePrincipal](../resources/user.md) object to be added.

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

## Related content

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
