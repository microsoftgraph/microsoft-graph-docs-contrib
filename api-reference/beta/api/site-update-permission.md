---
title: "Update permission"
description: "Update the permission object on a site."
author: "BarrySh"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Update permission
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [permission](../resources/permission.md) object on a site.

>**Note:** You can't use this method to update a user site permission.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.FullControl.All                       |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /sites/{sitesId}/permissions/{permissionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object.

## Response

If successful, this method returns a `200 OK` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_permission_from_",
  "sampleKeys": ["f2d90359-865b-4b6c-8848-d2722dd630e5", "2"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/sites/f2d90359-865b-4b6c-8848-d2722dd630e5/permissions/2
Content-Type: application/json

{
  "roles": ["read"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-permission-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-permission-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-permission-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-permission-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-permission-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-permission-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-permission-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "2",
  "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
  "roles": [
    "read"
  ],
  "grantedToIdentities": [
    {
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Fabrikam Dashboard App"
      }
    }
  ],
  "grantedToIdentitiesV2": [
    {
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Fabrikam Dashboard App"
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Sites/Permissions/Update site permission"
} -->
