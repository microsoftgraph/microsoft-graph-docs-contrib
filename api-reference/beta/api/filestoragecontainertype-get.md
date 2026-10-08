---
title: "Get fileStorageContainerType"
description: "Get a fileStorageContainerType using its ID."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [fileStorageContainerType](../resources/filestoragecontainertype.md) using its ID.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fileStorageContainerType](../resources/filestoragecontainertype.md) object in the response body.

## Examples

### Request
The following example shows how to get a **fileStorageContainerType** using the **containerTypeId**.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_filestoragecontainertype"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-filestoragecontainertype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-filestoragecontainertype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-filestoragecontainertype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-filestoragecontainertype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-filestoragecontainertype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-filestoragecontainertype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerType"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Container Type Name",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
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
      "chatEmbedAllowedHosts": ["https://localhost:3000"]
    }
  }
}
```

