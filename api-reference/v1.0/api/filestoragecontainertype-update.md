---
title: "Update fileStorageContainerType"
description: "Update the properties of a fileStorageContainerType object."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update fileStorageContainerType

Namespace: microsoft.graph

Update the properties of a [fileStorageContainerType](../resources/filestoragecontainertype.md) object. The properties updated are reflected in each registered [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) in a maximum of 24 hours. Settings overridden in a tenant aren't updated.

>**Note**: When the settings are updated, the behavior of any new **fileStorageContainer** changes, but existing containers might require their [settings](../resources/filestoragecontainer.md) to be updated directly or might not be updated; for example, storage size.

ETag is used for optimistic concurrency control. It must match the value from [Create](./filestorage-post-containertypes.md), [Get](./filestoragecontainertype-get.md) or the previous Update.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the fileStorageContainerType. Optional.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|fileStorageContainerType settings. Optional.|
|etag|String|Used for optimistic concurrency control. Must match the value returned from a [Create](filestorage-post-containertypes.md) or [Get](filestoragecontainertype-get.md) request. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [fileStorageContainerType](../resources/filestoragecontainertype.md) object in the response body.

## Examples

### Example 1: Update a fileStorageContainerType
The following example shows how to update a **fileStorageContainerType**.
#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertype"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00
Content-Type: application/json

{
  "settings": {
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isItemVersioningEnabled": true,
    "isSharingRestricted": false
  },
  "etag": "RVRhZw=="
}
```

#### Response
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
  "etag": "RVRhZyArIDE=",
  "settings": {
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isDiscoverabilityEnabled": true,
    "isSearchEnabled": true,
    "isItemVersioningEnabled": true,
    "itemMajorVersionLimit": 50,
    "maxStoragePerContainerInBytes": 104857600,
    "isSharingRestricted": false,
    "consumingTenantOverridables": ""
  }
}
```

### Example 2: Update a fileStorageContainerType without ETag
The following example shows how to update a **fileStorageContainerType** without an **etag**.
#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertype_no_etag"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "settings": {
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isItemVersioningEnabled": true,
    "isSharingRestricted": false
  }
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 400 Bad Request
```
