---
title: "Delete deviceTemplate owners"
description: "Delete owners of a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Delete DeviceTemplate Owners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove owner of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-delete-owners-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Delegated** & **Application**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
Delete /directory/templates/deviceTemplates/{id}/owners/{user_id}/$ref
```

## Request headers
| Name | Type |	Description |
|--|--|--|
Authorization|string|Bearer {token}. Required. |

## Request Body
Don't supply a request body for this method.

## Response
- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](../../../concepts/errors.md) for more information regarding general error codes and error conditions.

## Examples

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_owners_from_devicetemplate"
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/owners/ec8493f6-748f-4f53-928d-1ca4b6fcacc6/$ref
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