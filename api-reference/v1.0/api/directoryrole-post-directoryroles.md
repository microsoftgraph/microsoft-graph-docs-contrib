---
title: "Activate directoryRole"
description: "Activate a directory role."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/25/2024
---

# Activate directoryRole

Namespace: microsoft.graph

Activate a directory role. To read a directory role or update its members, it must first be activated in the tenant.

The Company Administrators and the implicit user directory roles (**User**, **Guest User**, and **Restricted Guest User** roles) are activated by default. To access and assign members to other directory roles, you must first activate it with its corresponding [directory role template](../resources/directoryroletemplate.md) ID.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directoryrole_post_directoryroles" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryrole-post-directoryroles-permissions.md)]

[!INCLUDE [rbac-directory-role-apis-write](../includes/rbac-for-apis/rbac-directory-role-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directoryRoles

```
## Request headers
| Name       | Description|
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of [directoryRole](../resources/directoryrole.md) object.

The following table shows the properties that are required when you activate a directory role.

|Parameter | Type | Description|
|:---------|:---------|:---------|
|roleTemplateId | string | Required. The ID of the [directoryRoleTemplate](../resources/directoryroletemplate.md) that the role is based on. This is the only property that may be specified in the request.|

## Response

If successful, this method returns `201 Created` response code and [directoryRole](../resources/directoryrole.md) object in the response body.

## Example
##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryrole_from_directoryroles"
}-->
```http
POST https://graph.microsoft.com/v1.0/directoryRoles
Content-type: application/json

{
  "roleTemplateId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryrole-from-directoryroles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-directoryrole-from-directoryroles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-directoryrole-from-directoryroles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryrole-from-directoryroles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryrole-from-directoryroles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-directoryrole-from-directoryroles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-directoryrole-from-directoryroles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-directoryrole-from-directoryroles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of [directoryRole](../resources/directoryrole.md) object.
##### Response
Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryRole"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryRoles/$entity",
  "id": "76f84d30-2759-4c66-915d-65c6e4083fa0",
  "deletedDateTime": null,
  "description": "Can manage all aspects of users and groups, including resetting passwords for limited admins.",
  "displayName": "User Administrator",
  "roleTemplateId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create directoryRole",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

