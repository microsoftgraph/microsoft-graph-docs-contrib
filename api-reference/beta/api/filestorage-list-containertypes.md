---
title: "List containerTypes"
description: "Get a list of the fileStorageContainerType objects and their properties for the current tenant."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List containerTypes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [fileStorageContainerType](../resources/filestoragecontainertype.md) objects and their properties for the current tenant.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-list-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-list-containertypes-permissions.md)]

>**Note:**
> Either the SharePoint Embedded admin role or the Global admin role is required to call this API.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containerTypes
```

## Optional query parameters

This method supports the `$filter`, `$select`, `$orderby`, `$count`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainerType](../resources/filestoragecontainertype.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainertype"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-filestoragecontainertype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-filestoragecontainertype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-filestoragecontainertype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filestoragecontainertype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-filestoragecontainertype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-filestoragecontainertype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainerType)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerType",
      "id": "de988700-d700-020e-0a00-0831f3042f00",
      "name": "Container Type 1",
      "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "billingClassification": "trial",
      "createdDateTime": "01/20/2025",
      "expirationDateTime": "02/20/2025",
      "etag": "RVRhZw==",
      "settings": {
        "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
        "isDiscoverabilityEnabled": true,
        "isSearchEnabled": true,
        "isItemVersioningEnabled": true,
        "itemMajorVersionLimit": 50,
        "maxStoragePerContainerInBytes": 104857600,
        "isSharingRestricted": false,
        "consumingTenantOverridables": "",
        "agent": {
          "chatEmbedAllowedHosts": ["https://contoso.com", "https://localhost:5000"]
        }
      }
    },
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerType",
      "id": "88aeae-d700-020e-0a00-0831f3042f01",
      "name": "Container Type 2",
      "owningAppId": "33225700-9a00-4c00-84dd-0c210f203f01",
      "billingClassification": "standard",
      "createdDateTime": "01/20/2025",
      "expirationDateTime": null,
      "etag": "RVRhZw==",
      "settings": {
        "urlTemplate": "",
        "isDiscoverabilityEnabled": true,
        "isSearchEnabled": true,
        "isItemVersioningEnabled": false,
        "itemMajorVersionLimit": 100,
        "maxStoragePerContainerInBytes": 104857600,
        "isSharingRestricted": false,
        "consumingTenantOverridables": ""
      }
    }
  ]
}
```

