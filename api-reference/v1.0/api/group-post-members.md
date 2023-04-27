---
title: "Add members"
description: "Add a member to a Microsoft 365 or security group through the members navigation property."
ms.localizationpriority: high
author: "psaffaie"
ms.prod: "groups"
doc_type: apiPageType
---

# Add members

Namespace: microsoft.graph

Add a member to a security or Microsoft 365 group through the **members** navigation property.

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

## Permissions

The following table shows the least privileged permission that's required by each resource type when calling this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource                        | Delegated (work or school account)                      | Delegated (personal Microsoft account) | Application                                             |
|:-------------------------------------------|:---------------------------------------------------------|:----------------------------------------|:---------------------------------------------------------|
| [device](../resources/device.md)          | GroupMember.ReadWrite.All and Device.ReadWrite.All      | Not supported.                         | GroupMember.ReadWrite.All and Device.ReadWrite.All      |
| [group](../resources/group.md)            | GroupMember.ReadWrite.All and Group.ReadWrite.All       | Not supported.                         | GroupMember.ReadWrite.All and Group.ReadWrite.All       |
| [orgContact](../resources/device.md)      | GroupMember.ReadWrite.All and OrgContact.Read.All       | Not supported.                         | GroupMember.ReadWrite.All and OrgContact.Read.All       |
| [servicePrincipal](../resources/group.md) | GroupMember.ReadWrite.All and Application.ReadWrite.All | Not supported.                         | GroupMember.ReadWrite.All and Application.ReadWrite.All |
| [user](../resources/user.md)              | GroupMember.ReadWrite.All and User.ReadWrite.All        | Not supported.                         | GroupMember.ReadWrite.All and User.ReadWrite.All       |

> [!IMPORTANT]
> To add members to a role-assignable group, the calling user must also be assigned the _RoleManagement.ReadWrite.Directory_ permission.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{group-id}/members/$ref
```

## Request headers

| Header        | Value                       |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [directoryObject](../resources/directoryobject.md), [user](../resources/user.md), [group](../resources/group.md), or [organizational contact](../resources/orgcontact.md) object to be added.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body. This method returns a `400 Bad Request` response code when the object is already a member of the group. This method returns a `404 Not Found` response code when the object being added doesn't exist.

## Examples

### Example 1: Add a member to a group

#### Request

The following is an example of the request.

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

---

In the request body, supply a JSON representation of the id of the directoryObject, user, or group object you want to add.

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Add multiple members to a group in a single request

This example shows how to add multiple members to a group with OData bind support in a PATCH operation. Note that up to 20 members can be added in a single request. The POST operation is not supported. If an error condition exists in the request body, no members are added and the appropriate response code is returned.

#### Request

The following is an example of the request.

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

---

In the request body, supply a JSON representation of the id of the directoryObject, user, or group object you want to add.

#### Response

The following is an example of the response.

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
<!-- {
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api/group-post-members.md:
      Failed to parse enumeration values for type microsoft.graph.add. Table requires a column header named one of the following: Member, Name, Value"
  ]
}-->
