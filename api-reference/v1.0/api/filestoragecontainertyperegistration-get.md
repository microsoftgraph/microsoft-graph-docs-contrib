---
title: "Get fileStorageContainerTypeRegistration"
description: "Read the properties and relationships of a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get fileStorageContainerTypeRegistration

Namespace: microsoft.graph

Read the properties and relationships of a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-get-permissions.md)]

>**Note:**
> * When delegated tokens are used, either the SharePoint Embedded admin role or the Global admin role is required.
> * If the `FileStorageContainerTypeReg.Selected` permission is used, results are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application that makes the call.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}
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

If successful, this method returns a `200 OK` response code and a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object in the response body.

## Examples

### Request
The following example shows how to get a **fileStorageContainerTypeRegistration** using its ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_filestoragecontainertyperegistration"
}
-->
```http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-filestoragecontainertyperegistration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-filestoragecontainertyperegistration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-filestoragecontainertyperegistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-filestoragecontainertyperegistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-filestoragecontainertyperegistration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-filestoragecontainertyperegistration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Container Type Name",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
  "registredDateTime": "01/20/2025",
  "expirationDateTime": "02/20/2025",
  "etag": "RVRhZw==",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings",
    "sharingCapability": "disabled",
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isDiscoverabilityEnabled": true,
    "isSearchEnabled": true,
    "isItemVersioningEnabled": true,
    "itemMajorVersionLimit": 50,
    "maxStoragePerContainerInBytes": 104857600,
    "isSharingRestricted": false
  },
  "applicationPermissionGrants": [
    {
      "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "delegatedPermissions": ["read"],
      "applicationPermissions": ["full"]
    },
    {
      "appId": "d893fd02-3578-4c7f-bd85-12fc3358af48",
      "delegatedPermissions": ["none"],
      "applicationPermissions": ["read"]
    }
  ]
}
```

