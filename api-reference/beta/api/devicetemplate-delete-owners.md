---
title: "Remove owners"
description: "Remove a directoryObject object."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Delete DeviceTemplate Owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove owner of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-delete-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-delete-owners-permissions.md)]

## HTTP request

The `{deviceTemplateId}` in the request is the value of the **id** property of the device template while {id} represents the **oid** of the owner service principal.
<!-- { "blockType": "ignored" } -->
```http
Delete /directory/templates/deviceTemplates/{deviceTemplateId}/owners/{id}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request Body

Don't supply a request body for this method.

## Response

- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.

## Examples

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_owners_from_devicetemplate"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/owners/ec8493f6-748f-4f53-928d-1ca4b6fcacc6/$ref
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
