---
title: "fileStorageContainer: activate"
description: "Activate a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: activate

Namespace: microsoft.graph

Activate a [fileStorageContainer](../resources/filestoragecontainer.md) object.

A **fileStorageContainer** object is created in an inactive state, as indicated by the **status** property. A container must be activated within 24 hours after creation, or it is automatically deleted. Upon activation, the value of the status property changes from `inactive` to `active`.

A **fileStorageContainer** can be activated by calling the activate API or any API that updates or modifies the **fileStorageContainer** or its content. For example, uploading a file to a **fileStorageContainer**, adding permission to a **fileStorageContainer**, creating a custom property on a **fileStorageContainer**, or updating the properties of a **fileStorageContainer** can activate it.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "filestoragecontainer_activate" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-activate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{containerId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "activate_filestoragecontainer"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/storage/fileStorage/containers/{containerId}/activate
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

