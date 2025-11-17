---
title: "Create fileStorageContainerType"
description: "Create a new fileStorageContainerType object in the owning tenant."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---


# Create fileStorageContainerType

Namespace: microsoft.graph

Create a new [fileStorageContainerType](../resources/filestoragecontainertype.md) in the owning tenant. The number of container types in a tenant is [limited](/sharepoint/dev/embedded/development/limits-calling).

> [!IMPORTANT]
> * The tenant must own the application that is assigned as the owner of the **fileStorageContainerType** (**owningAppId**).
> * The registration of a container type in a newly created tenant can fail if the tenant isn't yet fully ready. You might need to wait at least an hour before you can register a container type in a new tenant.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-post-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-post-containertypes-permissions.md)]

>**Note:**
> Either the SharePoint Embedded admin role or the Global admin role is required to call this API.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/containerTypes
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerType](../resources/filestoragecontainertype.md) object.

You can specify the following properties when you create a **fileStorageContainerType**.

|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|The billing type. The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`. The default value is `standard`. Optional.|
|name|String|The name of the **fileStorageContainerType**. Required.|
|owningAppId|Guid|ID of the application that owns the **fileStorageContainerType**. Required.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|The settings of the **fileStorageContainerType**. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerType](../resources/filestoragecontainertype.md) object in the response body.

## Examples

### Request
The following example shows how to create a trial [fileStorageContainerType](../resources/filestoragecontainertype.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertype_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containerTypes
Content-Type: application/json

{
  "name": "Test Trial Container",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "settings": {
    "isItemVersioningEnabled": true,
    "isSharingRestricted": false,
    "consumingTenantOverridables": "isSearchEnabled,itemMajorVersionLimit",
    "agent": {
      "chatEmbedAllowedHosts": ["https://localhost:3000"]
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-filestoragecontainertype-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-filestoragecontainertype-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-filestoragecontainertype-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-filestoragecontainertype-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-filestoragecontainertype-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-filestoragecontainertype-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Test Trial Container",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
  "createdDateTime": "01/20/2025",
  "expirationDateTime": "02/20/2025",
  "etag": "RVRhZw==",
  "settings": {
    "urlTemplate": "",
    "isDiscoverabilityEnabled": true,
    "isSearchEnabled": true,
    "isItemVersioningEnabled": true,
    "itemMajorVersionLimit": 50,
    "maxStoragePerContainerInBytes": 104857600,
    "isSharingRestricted": false,
    "consumingTenantOverridables": "isSearchEnabled,itemMajorVersionLimit",
    "agent": {
      "chatEmbedAllowedHosts": ["https://localhost:3000"]
    }
  }
}
```
