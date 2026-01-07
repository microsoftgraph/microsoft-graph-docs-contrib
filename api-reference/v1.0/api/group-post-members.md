---
title: "Add members"
description: "Add a member to a Microsoft 365 or security group through the members navigation property."
ms.localizationpriority: high
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 09/09/2025
---

# Add members

Namespace: microsoft.graph

Add a member to a security or Microsoft 365 [group](../resources/group.md). When using the API to add multiple members in one request, you can add up to only 20 members. 

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission that's required by each resource type when calling this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource                        | Delegated (work or school account)                      | Delegated (personal Microsoft account) | Application                                             |
|:------------------------------------------|:--------------------------------------------------------|:---------------------------------------|:--------------------------------------------------------|
| [device](../resources/device.md)          | GroupMember.ReadWrite.All and Device.Read.All           | Not supported.                         | GroupMember.ReadWrite.All and Device.ReadWrite.All      |
| [group](../resources/group.md)            | GroupMember.ReadWrite.All                               | Not supported.                         | GroupMember.ReadWrite.All       |
| [orgContact](../resources/device.md)      | GroupMember.ReadWrite.All and OrgContact.Read.All       | Not supported.                         | GroupMember.ReadWrite.All and OrgContact.Read.All       |
| [servicePrincipal](../resources/group.md) | GroupMember.ReadWrite.All and Application.ReadWrite.All | Not supported.                         | GroupMember.ReadWrite.All and Application.ReadWrite.All |
| [user](../resources/user.md)              | GroupMember.ReadWrite.All                               | Not supported.                         | GroupMember.ReadWrite.All                               |

> [!IMPORTANT]
> In delegated scenarios, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the `microsoft.directory/groups/members/update` role permission. The following roles are the least privileged roles that are supported for this operation, except for role-assignable groups:
> 
> - Group owners
> - Directory Writers
> - Groups Administrator
> - Identity Governance Administrator
> - User Administrator
> - Exchange Administrator - only for Microsoft 365 groups
> - SharePoint Administrator - only for Microsoft 365 groups
> - Teams Administrator - only for Microsoft 365 groups
> - Yammer Administrator - only for Microsoft 365 groups
> - Intune Administrator - only for security groups
> 
> To add members to a role-assignable group, the app must also be assigned the *RoleManagement.ReadWrite.Directory* permission and the calling user must be assigned a supported Microsoft Entra role. *Privileged Role Administrator* is the least privileged role that is supported for this operation.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{group-id}/members/$ref
PATCH /groups/{group-id}
```

## Request headers

| Header        | Value                       |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

When using the `POST /groups/{group-id}/members/$ref` syntax, supply a JSON object that contains an **@odata.id** property with a reference by ID to a supported group member object type.

When using the `PATCH /groups/{group-id}` syntax, supply a JSON object that contains a **members@odata.bind** property with one or more references by IDs to a supported group member object type. That is:
- For Microsoft 365 groups, only `https://graph.microsoft.com/v1.0/directoryObjects/{id}` and `https://graph.microsoft.com/v1.0/groups/{id}` is allowed where `{id}` must be a user because only users can members of Microsoft 365 groups.
- For security groups, the following ID references are allowed:
  - `https://graph.microsoft.com/v1.0/directoryObjects/{id}` where `{id}` must belong to a user, security group, device, service principal, or organizational contact.
  - `https://graph.microsoft.com/v1.0/groups/{id}` where `{id}` must belong to another security group. Microsoft 365 groups can't be members of security groups.
  - `https://graph.microsoft.com/v1.0/devices/{id}` where `{id}` belongs to a device.
  - `https://graph.microsoft.com/v1.0/servicePrincipal/{id}` where `{id}` belongs to a service principal.
  - `https://graph.microsoft.com/v1.0/orgContact/{id}` where `{id}` belongs to an organizational contact.

## Response

If successful, this method returns a `204 No Content` response code. It returns a `400 Bad Request` response code when the object is already a member of the group or is unsupported as a group member. It returns a `404 Not Found` response code when the object being added doesn't exist. It returns `403 Unauthorized` in one of the following scenarios:
- You're attempting to add a member to a [group that can't be managed through Microsoft Graph](../resources/groups-overview.md#types-of-groups-supported-in-microsoft-graph). This API supports only security and Microsoft 365 groups.
- You're attempting to add a member you don't have permissions to add. Refer to the preceding [Permissions](#permissions) section for the permissions required to add different member types.
- You're attempting to add a member to a role-assignable group and you don't have the required permissions.

## Examples

### Example 1: Add a member to a group

#### Request

The following example shows a request that uses the **directoryObjects** reference to add a member to a group.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "add_member_to_group"
}-->

```http
POST https://graph.microsoft.com/v1.0/groups/{group-id}/members/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-member-to-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-member-to-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-member-to-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-member-to-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-member-to-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-member-to-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-member-to-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Add multiple members to a group in a single request

This example shows how to add multiple members to a group with OData bind support in a PATCH operation. Up to 20 members can be added in a single request. If an error condition exists in the request body, no members are added and the appropriate response code is returned.

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "add_multiple_members_to_group"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/groups/{group-id}
Content-type: application/json

{
  "members@odata.bind": [
    "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
    "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
    "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-multiple-members-to-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-multiple-members-to-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-multiple-members-to-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-multiple-members-to-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-multiple-members-to-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-multiple-members-to-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-multiple-members-to-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of the id of the directoryObject, user, or group object you want to add.

#### Response

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
