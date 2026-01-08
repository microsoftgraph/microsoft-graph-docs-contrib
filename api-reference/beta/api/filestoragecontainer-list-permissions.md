---
title: "List fileStorageContainer permissions"
description: "Get the set of permissions for a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 11/12/2024
---

# List fileStorageContainer permissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [permission](../resources/permission.md) objects associated with a [fileStorageContainer](../resources/filestoragecontainer.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_list_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containers/{containerId}/permissions
```

## Optional query parameters
This method supports the `$skip`, `$top`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

By default, this API lists only container-scoped permissions. You can use the `includeAllContainerUsers=true` query parameter to include entries for identities that may have at least one item-level permission in the container but don't have container-scoped permission.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [permission](../resources/permission.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_permission"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-permission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-permission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-permission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-permission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-permission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-permission-python-snippets.md)]
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
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.permission)",
  "value": [
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
        "roles": ["principalOwner"],
        "grantedToV2": {
          "user": {
            "id": "71392b2f-1765-406e-86af-5907d9bdb2ab",
            "userPrincipalName": "jhan@contoso.com",
            "displayName": "Jacob Hancock",
            "email": "jhan@contoso.com"
          }
        }
    },
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "cHJpbmNpcGFsT3duZXJfaTowIy5mfG1lbWJlcnNoaXB8ZGxpZGRlbGwyMDIyQG91dGxvb2suY29t",
        "roles": ["reader"],
        "grantedToV2": {
          "user": {
            "id": "86503198-b81b-43fe-81ee-ad45b8848ac9",
            "userPrincipalName": "mnick@contoso.com",
            "displayName": "Mark Nickhols",
            "email": "mnick@contoso.com"
          }
        }
    },
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "iZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQcJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJl",
        "roles": ["writer"],
        "grantedToV2": {
          "user": {
            "id": "0000000-b82c-23ee-51ef-ab47c8177bl0",
            "userPrincipalName": "hjac@contoso.com",
            "displayName": "Howard Jacobs",
            "email": "hjac@contoso.com"
          }
        }
    }
  ]
}
```

