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

When delegated tokens are used, SharePoint Embedded admin or Global admin role is required.
If FileStorageContainerTypeReg.Selected is used, changes are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application
making the call.
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
PATCH /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{appId}
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
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|Allowed permissions when using delegated tokens with the defined appId. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`. Optional.|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|Allowed permissions when using application tokens with the defined appid. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in the response body.

## Examples

Update app-only permissions in an existing app permission grant

### Request

<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertypeapppermissiongrant"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/21b52d99-7114-4c47-80b3-362b6a0bba3a/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00
Content-Type: application/json

{
  "applicationPermissions": ["full"]
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
  "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "delegatedPermissions": ["readContent", "writeContent"],
  "applicationPermissions": ["full"]
}
```

