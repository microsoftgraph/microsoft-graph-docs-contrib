---
title: "Add members"
description: "Add a member to a Microsoft 365 or security group through the members navigation property."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 11/30/2024
---

# Add members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a member to a security or Microsoft 365 [group](../resources/group.md). When using the API to add multiple members in one request, you can add up to only 20 members. 

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission that's required by each resource type when calling this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource                        | Delegated (work or school account)                      | Delegated (personal Microsoft account) | Application                                             |
|:------------------------------------------|:--------------------------------------------------------|:---------------------------------------|:--------------------------------------------------------|
| [device](../resources/device.md)          | GroupMember.ReadWrite.All and Device.ReadWrite.All      | Not supported.                         | GroupMember.ReadWrite.All and Device.ReadWrite.All      |
| [group](../resources/group.md)            | GroupMember.ReadWrite.All                               | Not supported.                         | GroupMember.ReadWrite.All       |
| [orgContact](../resources/device.md)      | GroupMember.ReadWrite.All and OrgContact.Read.All       | Not supported.                         | GroupMember.ReadWrite.All and OrgContact.Read.All       |
| [servicePrincipal](../resources/group.md) | GroupMember.ReadWrite.All and Application.ReadWrite.All | Not supported.                         | GroupMember.ReadWrite.All and Application.ReadWrite.All |
| [user](../resources/user.md)              | GroupMember.ReadWrite.All                               | Not supported.                         | GroupMember.ReadWrite.All                               |

In delegated scenarios, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the `microsoft.directory/groups/members/update` role permission. The following roles are the least privileged roles that are supported for this operation, except for role-assignable groups:

- Group owners
- Directory Writers
- Groups Administrator
- Identity Governance Administrator
- User Administrator
- Exchange Administrator - only for Microsoft 365 groups
- SharePoint Administrator - only for Microsoft 365 groups
- Teams Administrator - only for Microsoft 365 groups
- Yammer Administrator - only for Microsoft 365 groups
- Intune Administrator - only for security groups

To add members to a role-assignable group, the app must also be assigned the *RoleManagement.ReadWrite.Directory* permission and the calling user must be assigned a supported Microsoft Entra role. *Privileged Role Administrator* is the least privileged role that is supported for this operation.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{group-id}/members/$ref
POST /groups/{group-id}/members/
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

When using the `/groups/{group-id}/members/$ref` syntax, supply a JSON object that contains an **@odata.id** property with a reference by ID to a supported group member object type.

When using the `/groups/{group-id}/members` syntax, supply a JSON object that contains a **members@odata.bind** property with one or more references by IDs to a supported group member object type.

If using the **directoryObjects** reference, that is, `https://graph.microsoft.com/v1.0/directoryObjects/{id}`, the object type must still be a supported group member object type.

## Response

If successful, this method returns a `204 No Content` response code. It returns a `400 Bad Request` response code when the object is already a member of the group or is unsupported as a group member. It returns a `404 Not Found` response code when the object being added doesn't exist.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "add_group_member"
}-->

```http
POST https://graph.microsoft.com/beta/groups/{group-id}/members/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/{id}"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-group-member-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/add-group-member-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-group-member-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-group-member-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-group-member-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-group-member-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-group-member-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-group-member-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of the `id` of the [directoryObject](../resources/directoryobject.md), [user](../resources/user.md), or [group](../resources/group.md) object you want to add.

### Response

The following example shows the response.

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



[Yes]: /graph/images/yesandnosymbols/greencheck.svg
[No]: /graph/images/yesandnosymbols/no.svg

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api/group-post-members.md:
    Failed to parse enumeration values for type microsoft.graph.add. Table requires a column header named one of the following: Member, Name, Value"
  ]
}
-->
