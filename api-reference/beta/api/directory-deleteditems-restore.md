---
title: "Restore deleted item (directory object)"
description: "Restore a recently deleted application, group, service principal, or user from deleted items."
author: "keylimesoda"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Restore deleted item (directory object)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a recently deleted [application](../resources/application.md), [group](../resources/group.md), [servicePrincipal](../resources/serviceprincipal.md), [administrative unit](../resources/administrativeunit.md), or [user](../resources/user.md) object from [deleted items](../resources/directory.md). If an item was accidentally deleted, you can fully restore the item. This is not applicable to security groups, which are deleted permanently.

A recently deleted item will remain available for up to 30 days. After 30 days, the item is permanently deleted.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For applications and service principals:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All     |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |

The calling app must be assigned one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference):
+ Global Administrator
+ Application Administrator
+ Cloud Application Administrator
+ Hybrid Identity Administrator

### For users:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | User.ReadWrite.All |

### For groups:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.ReadWrite.All |

### For administrative units:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AdministrativeUnit.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directory/deleteditems/{id}/restore
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt; *Required*|
| Content-type | application/json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Example
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restore_directory_deleteditem"
}-->
```http
POST https://graph.microsoft.com/beta/directory/deleteditems/46cc6179-19d0-473e-97ad-6ff84347bbbb/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-directoryobject-from-directory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-directoryobject-from-directory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-directoryobject-from-directory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
  "@odata.type":"#microsoft.graph.group",
  "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
  "displayName":"SampleGroup",
  "groupTypes":["Unified"],
  "mail":"example@contoso.com",
  "mailEnabled":true,
  "mailNickname":"Example",
  "securityEnabled":false,
  "visibility":"Public"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create deletedItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


