---
title: "List permissions for a fileStorageContainerType"
description: "Get the list of permission objects associated with a fileStorageContainerType."
author: "grjoseph"
ms.date: 02/27/2026
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List permissions for a fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [permission](../resources/permission.md) objects associated with a [fileStorageContainerType](../resources/filestoragecontainertype.md). Each permission represents a user with management rights to the container type.

The calling user must be listed in the **permissions** collection for the container type with the `owner` role, or be a SharePoint Embedded Administrator or Global Administrator.

> [!NOTE]
> * Guest users can't perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-list-permissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-list-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}/permissions
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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

The following example shows a request to list all permissions for a container type.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_permission_filestoragecontainertype"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00/permissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-permission-filestoragecontainertype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-permission-filestoragecontainertype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-permission-filestoragecontainertype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-permission-filestoragecontainertype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-permission-filestoragecontainertype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-permission-filestoragecontainertype-python-snippets.md)]
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
      "@odata.type": "#microsoft.graph.permission",
      "id": "b3duZXJfODc2NTQzMjEtNDMyMS00MzIxLTQzMjEtMjEwOTg3NjU0MzIx",
      "roles": ["owner"],
      "grantedToV2": {
        "user": {
          "id": "87654321-4321-4321-4321-210987654321"
        }
      }
    },
    {
      "@odata.type": "#microsoft.graph.permission",
      "id": "b3duZXJfMTExMTExMTEtMTExMS0xMTExLTExMTEtMTExMTExMTExMTEx",
      "roles": ["owner"],
      "grantedToV2": {
        "user": {
          "id": "11111111-1111-1111-1111-111111111111"
        }
      }
    }
  ]
}
```

