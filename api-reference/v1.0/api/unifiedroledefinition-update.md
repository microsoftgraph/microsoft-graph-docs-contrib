---
title: "Update unifiedRoleDefinition"
description: "Update the properties of a unifiedRoleDefinition object."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Update unifiedRoleDefinition

Namespace: microsoft.graph

Update the properties of a [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object. You cannot update built-in roles. This feature requires an Azure AD Premium P1 or P2 license.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | RoleManagement.ReadWrite.Directory |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | RoleManagement.ReadWrite.Directory |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /roleManagement/directory/roleDefinitions/{id}
```

## Request headers
	
| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |
| Content-Type | application/json. Required. |
	
## Request body
	
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For the best performance, don't include existing values that haven't changed.
	
The following table shows the properties that are required when you update the [unifiedRoleDefinition](../resources/unifiedroledefinition.md).

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String| The description for the role definition. Read-only when **isBuiltIn** is `true`. |
|displayName|String| The display name for the role definition. Read-only when **isBuiltIn** is `true`. Required.|
|isEnabled|Boolean| Flag indicating if the role is enabled for assignment. If `false`, the role is not available for assignment. Read-only when **isBuiltIn** is true. |
|resourceScopes|String collection| List of scopes and permissions the role definition applies to. Currently only `/` is supported. Read-only when **isBuiltIn** is true. **DO NOT USE. This property will be deprecated soon. Attach scope to role assignment.**|
|rolePermissions|[unifiedRolePermission](../resources/unifiedrolepermission.md) collection| List of permissions included in the role. Read-only when **isBuiltIn** is `true`. Required. |
|templateId|String| Custom template identifier that can be set when **isBuiltIn** is `false`. This identifier is typically used if one needs an identifier to be the same across different directories. Read-only when **isBuiltIn** is `true`. |
|version|String| Indicates version of the role definition. Read-only when **isBuiltIn** is `true`.|

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_unifiedroledefinition",
  "sampleKeys": ["0d55728d-3e24-4309-9b1b-5ac09921475a"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/roleManagement/directory/roleDefinitions/0d55728d-3e24-4309-9b1b-5ac09921475a
Content-type: application/json

{
  "description": "Update basic properties of application registrations",
  "displayName": "Application Registration Support Administrator",
  "rolePermissions":
    [
        {
            "allowedResourceActions": 
            [
                "microsoft.directory/applications/basic/read"
            ]
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-unifiedroledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-unifiedroledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-unifiedroledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-unifiedroledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-unifiedroledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-unifiedroledefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 OK
Content-type: application/json
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update unifiedroledefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

