---
title: "Remove deviceTemplate"
description: "Remove a deviceTemplate object."
author: "sofia-geislinger"
ms.date: 11/24/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Remove deviceTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a registered [deviceTemplate](../resources/devicetemplate.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "device-delete-devicetemplate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/device-delete-devicetemplate-permissions.md)]

## HTTP request

The `{id}` in the request is the value of the **ID** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/templates/deviceTemplates/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

> **Note:** DeviceTemplates can't be deleted until all linked devices are deleted. Failure to do so results in a `400` response.


|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates can't be deleted until all linked devices are deleted. | Failure to do so results in a `400` response. |
|`403` | Caller isn't owner of the `deviceTemplate`| Caller isn't allowed to create devices based on this template|


## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_devicetemplate_from_device"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
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

