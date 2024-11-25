---
title: "Delete a Device Template"
description: "Delete a device template."
author: "sgeislinger"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Delete DeviceTemplate

Namespace: microsoft.graph

Delete a registered [deviceTemplate](../resources/devicetemplate.md). 

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "device-delete-devicetemplate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/device-delete-devicetemplate-permissions.md)]

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
DELETE /templates/deviceTemplates/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

- If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

> **Note:** DeviceTemplates can't be deleted until all linked devices are deleted. Failure to do so results in a `400` response.


|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates can't be deleted until all linked devices are deleted. | Failure to do so results in a `400` response. |
|`403` | Caller isn't owner of the `deviceTemplate`| Caller isn't allowed to create devices based on this template|


## Example
### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_devicetemplate_from_device"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/devices/{devicesId}/deviceTemplate/{id}/$ref
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
HTTP/1.1 204 No Content
```

## Example 2

### Request

If the user doesn't have access to a given resource, the error emitted shows as:

```http
DELETE https://graph.microsoft.com/v1.0/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
```

### Response

```json
HTTP/1.1 403

{ "error": { "code": "authorization_error", "message": "Failed to authorize, token doesn't have the required permissions.", "innerError": { "date": "2022-05-26T01:12:14", "request-id": "19318138-3b82-410c-acff-821f07925027", "client-request-id": "0aa65d9c-a47c-566a-40a7-0261f0f5b6c3" } } }
```
