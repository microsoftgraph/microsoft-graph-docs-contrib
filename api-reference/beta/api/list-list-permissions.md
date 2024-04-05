---
title: "List list permissions"
description: "Get the permission resources from the permissions navigation property on a list."
author: "patrodg"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# List list permissions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [permission](../resources/permission.md) resources from the permissions navigation property on a list.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "list_list_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/list-list-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{site-id}/lists/{list-id}/permissions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [permission](../resources/permission.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_permission_list_nav_property"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/f2d90359-865b-4b6c-8848-d2722dd630e5/lists/1d702d60-503c-4924-abfd-028c65fc89ed/permissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list_permission_list_nav_property-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list_permission_list_nav_property-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list_permission_list_nav_property-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list_permission_list_nav_property-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list_permission_list_nav_property-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list_permission_list_nav_property-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list_permission_list_nav_property-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list_permission_list_nav_property-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1",
      "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
      "roles": [
        "read"
      ],
      "grantedToIdentities": [
        {
          "application": {
            "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
            "displayName": "Contoso Time Manager App"
          }
        }
      ],
      "grantedToIdentitiesV2": [
        {
          "application": {
            "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
            "displayName": "Contoso Time Manager App"
          }
        }
      ]
    },
    {
      "id": "2",
      "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
      "roles": [
        "write"
      ],
      "grantedToIdentities": [
        {
          "application": {
            "id": "22f09bb7-dd29-403e-bec2-ab5cde52c2b3",
            "displayName": "Fabrikam Dashboard App"
          }
        }
      ],
      "grantedToIdentitiesV2": [
        {
          "application": {
            "id": "22f09bb7-dd29-403e-bec2-ab5cde52c2b3",
            "displayName": "Fabrikam Dashboard App"
          }
        }
      ]
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Lists/Permissions/List list permissions"
} -->
