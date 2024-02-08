---
title: "Create fileStorageContainer"
description: "Create a new fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Create fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fileStorageContainer](../resources/filestoragecontainer.md) object. 

The respective container type identified by **containerTypeId** must be enabled in the tenant. 

For delegated calls, the calling user is set as the owner of the **fileStorageContainer**. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [fileStorageContainer](../resources/filestoragecontainer.md) object.

You can specify the following properties when you create a **fileStorageContainer**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the container. Required.|
|description|String|Provides a user-visible description of the item. Optional.|
|containerTypeId|GUID|The container type of the container instance. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) object in the response body.

## Examples

### Request
The following example shows how to create a **fileStorageContainer**.
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainer"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers
Content-Type: application/json

{
  "displayName": "My Application Storage Container",
  "description": "Description of My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73"
}
```
### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainer"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainer",
  "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
  "displayName": "My Application Storage Container",
  "description": "Description of My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "status": "inactive",
  "createdDateTime": "2021-11-24T15:41:52.347Z"
}

```

