---
title: "Delete fileStorageContainerTypeRegistration"
description: "Delete a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete fileStorageContainerTypeRegistration

Namespace: microsoft.graph

Delete a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.

A registration can only be deleted if it has neither [containers](filestorage-list-containers.md) nor [deleted containers](filestorage-list-deletedcontainers.md)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-delete-containertyperegistrations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-delete-containertyperegistrations-permissions.md)]

>**Note:**
> * When delegated tokens are used, either the SharePoint Embedded admin role or the Global admin role is required.
> * If the `FileStorageContainerTypeReg.Selected` permission is used, changes are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application that makes the call.

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

### Request

The following example shows a request to delete a **fileStorageContainerTypeRegistration**.

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertyperegistration"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
