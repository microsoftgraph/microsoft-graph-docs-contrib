---
title: "Create engagementRoleMember"
description: "Create a new engagementRoleMember object that assigns a Viva Engage role to a user."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# Create engagementRoleMember

Namespace: microsoft.graph

Create a new [engagementRoleMember](../resources/engagementrolemember.md) object that assigns a Viva Engage role to a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "engagementrole_post_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/engagementrole-post-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /employeeExperience/roles/{engagementRoleId}/members
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [engagementRoleMember](../resources/engagementrolemember.md) object.

You can specify the following properties when you create an **engagementRoleMember**.

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the role was assigned to the user. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|userId|String|The Microsoft Entra ID of the user who has the role assigned.|

## Response

If successful, this method returns a `201 Created` response code and an [engagementRoleMember](../resources/engagementrolemember.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_engagementrolemember_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/roles/a40473a5-0fb4-a250-e029-f6fe33d07733/members
Content-Type: application/json

{
  "user@odata.bind": "https://graph.microsoft.com/v1.0/users('e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01')"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-engagementrolemember-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-engagementrolemember-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-engagementrolemember-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-engagementrolemember-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-engagementrolemember-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-engagementrolemember-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementRoleMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "id": "a40473a5-0fb4-a250-e029-f6fe33d07733",
  "userId": "e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01",
  "createdDateTime": "2025-09-22T14:03:00Z"
}
```
