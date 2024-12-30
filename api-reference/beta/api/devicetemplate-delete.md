---
title: "Delete deviceTemplate"
description: "Delete a registered deviceTemplate."
author: "sofia-geislinger"
ms.date: 11/24/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Delete deviceTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a registered [deviceTemplate](../resources/devicetemplate.md). You must first [delete](../api/device-delete.md) all devices linked to the template before deleting the template itself. Only [registered owners](../api/devicetemplate-list-owners.md) of the template can perform this operation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-delete-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]
> **Note:** Users must be owner of the object.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/templates/deviceTemplates/{id}
```
> **Note:** The `{id}` in the request URL is the value of the **id** property of the **deviceTemplate**.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body. Device templates can't be deleted until all linked devices are removed; otherwise, this method returns a `400 Bad Request` response code. If the caller isn't the owner of the device template, this method returns a `403 Forbidden` response code that indicates that the caller isn't authorized to delete this template. 

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_devicetemplate_from_device"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
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

