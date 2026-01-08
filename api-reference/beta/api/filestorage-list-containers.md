---
title: "List containers"
description: "Get a list of fileStorageContainer objects that are accessible to a caller."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 07/21/2025
---

# List containers


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [fileStorageContainer](../resources/filestoragecontainer.md) objects that are accessible to a caller. The **containerTypeId** filter parameter is required.

> [!IMPORTANT]
> Requests made on behalf of a user fail if the user doesn't have a OneDrive. This requirement doesn't apply when you call the endpoint without a user context (app-only authentication). The endpoint also only returns containers that the user is a direct member of. Containers that the user is a member of via a group aren't returned.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestorage_list_containers" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-list-containers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId}
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId} and viewpoint/effectiveRole eq 'principalOwner'
```

## Query parameters

This method requires the **containerTypeId** parameter. It supports the `$expand` OData query parameter, except for the **drive**, **permissions**, and **customProperties** properties. If other `$filter` conditions are used, the endpoint might return intermediate pages with partial results or even no results, and the caller must continue to read all pages to get all applicable results. For more information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainer](../resources/filestoragecontainer.md) objects in the response body. Only a limited subset of properties is returned for each **fileStorageContainer**.

## Examples

### Request

The following example enumerates all containers of a given container type.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainer"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containers?$filter=containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-filestoragecontainer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-filestoragecontainer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-filestoragecontainer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filestoragecontainer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-filestoragecontainer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-filestoragecontainer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainer)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/storage/fileStorage/containers",
  "@odata.count": 1,
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainer",
      "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
      "displayName": "My File Storage Container",
      "containerTypeId": "e2756c4d-fa33-4452-9c36-2325686e1082",
      "createdDateTime": "2021-11-24T15:41:52.347Z"
    }
  ]
}
```

