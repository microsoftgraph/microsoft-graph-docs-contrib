---
title: "Delete fileStorageContainerTypeRegistration"
description: "Delete a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete fileStorageContainerTypeRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a fileStorageContainerTypeRegistration object.

A registration can only be deleted if it doesn't have [containers](filestorage-list-containers.md), nor [deleted containers](filestorage-list-deletedcontainers.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated tokens are used, SharePoint Embedded admin or Global admin role is required.
If FileStorageContainerTypeReg.Selected is used, changes are limited to [registrations](../resources/fileStorageContainerTypeRegistration.md) owned by the application 
making the call.
<!-- {
  "blockType": "permissions",
  "name": "filestorage-delete-containertyperegistrations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-delete-containertyperegistrations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}
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

Delete a fileStorageContainerTypeRegistration

### Request

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertyperegistration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00
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

