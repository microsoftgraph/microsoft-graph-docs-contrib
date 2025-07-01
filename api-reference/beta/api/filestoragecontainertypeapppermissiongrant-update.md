---
title: "Update fileStorageContainerTypeAppPermissionGrant"
description: "Update the properties of a fileStorageContainerTypeAppPermissionGrant object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update fileStorageContainerTypeAppPermissionGrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a fileStorageContainerTypeAppPermissionGrant object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertypeapppermissiongrant-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertypeapppermissiongrant-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{fileStorageContainerTypeAppPermissionGrantId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description** Required.|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|**TODO: Add Description**. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|**TODO: Add Description**. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertypeapppermissiongrant"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{fileStorageContainerTypeAppPermissionGrantId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "469f9a3c-809e-a18c-5dfc-c20e628f65c4",
  "delegatedPermissions": [
    "String"
  ],
  "applicationPermissions": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "469f9a3c-809e-a18c-5dfc-c20e628f65c4",
  "delegatedPermissions": [
    "String"
  ],
  "applicationPermissions": [
    "String"
  ]
}
```

