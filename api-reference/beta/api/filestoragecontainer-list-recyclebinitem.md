---
title: "List recycleBinItem"
description: "Get a list of recyclebinitem objects from a fileStorageContainer recycleBin."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 10/14/2024
---

# List recycleBinItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [recycleBinItem](../resources/recyclebinitem.md) objects from the [recycleBin](../resources/recyclebin.md) of a [fileStorageContainer](../resources/filestoragecontainer.md).  

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_list_recyclebinitem" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-recyclebinitem-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /storage/fileStorage/containers/{containerId}/recycleBin/items
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recycleBinItem](../resources/recyclebinitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_recyclebinitem"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/recycleBin/items
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-recyclebinitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-recyclebinitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-recyclebinitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-recyclebinitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-recyclebinitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-recyclebinitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "5d625d33-338c-4a77-a98a-3e287116440c",
      "name": "document.docx",
      "size": 1024,
      "deletedDateTime": "2022-04-25T20:11:51Z",
      "title": "my document",
      "deletedBy": {
        "user": {
          "displayName": "Tenant Admin User",
          "id": "EBA7DBE0-B42F-4BC8-AEF6-97B66EFC77D0",
          "userPrincipalName": "jhan@contoso.com"
        }
      }
    }
  ]
}
```

