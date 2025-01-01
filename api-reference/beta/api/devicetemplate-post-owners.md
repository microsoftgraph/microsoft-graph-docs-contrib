---
title: "Add deviceTemplate owner"
description: "Add a new owner to a deviceTemplate object."
author: "ploegert"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 12/31/2024
---

# Add deviceTemplate owner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new owner to a [deviceTemplate](../resources/devicetemplate.md) object. Owners are granted permissions to enable or disable devices and update properties, such as **alternativeNames**, for the devices created from the device template. As an owner, no other administrator roles are necessary to create, update, or delete devices from this template, as well as to add or remove template owners. Owners added via this API are returned in a [list device owners](../api/devicetemplate-list-owners.md) request. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-post-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-post-owners-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /directory/templates/deviceTemplates/{id}/owners/$ref
```

>**Note:** The `{id}` in the request URL is the value of the **id** property of the **deviceTemplate**.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Property|Type|Description|
|:---|:---|:---|
|@odata.id|String|The object identifier of the target user or service principal, in the following format: `https://graph.microsoft.com/beta/users/{id}` or `https://graph.microsoft.com/beta/serviceprincipals/{id}`. |

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryobjects"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/owners/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/users/00001111-aaaa-2222-bbbb-3333cccc4444"
}
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

