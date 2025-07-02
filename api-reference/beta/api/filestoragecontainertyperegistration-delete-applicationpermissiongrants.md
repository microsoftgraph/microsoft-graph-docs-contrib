---
title: "Delete fileStorageContainerTypeAppPermissionGrant"
description: "Delete a fileStorageContainerTypeAppPermissionGrant object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete fileStorageContainerTypeAppPermissionGrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a fileStorageContainerTypeAppPermissionGrant object in a [fileStorageContainerTypeRegistration](../resources/fileStorageContainerTypeRegistration.md)


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated tokens are used, SharePoint Embedded admin or Global admin permissions are required.
If FileStorageContainerTypeReg.Selected is used, changes are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application
making the call.

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-delete-applicationpermissiongrants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-delete-applicationpermissiongrants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{appId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

Delete a permission grant in a storage container type.

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertypeapppermissiongrant"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/21b52d99-7114-4c47-80b3-362b6a0bba3a/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

