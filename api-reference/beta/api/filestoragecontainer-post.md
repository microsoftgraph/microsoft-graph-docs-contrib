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

The respective container type identified by containerTypeId must be enabled in the tenant. 

For delegated calls, the calling user is set as the owner of the fileStorageContainer. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have permission to create a fileStorageContainer for the respective container type.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|Not supported.|
|Application|FileStorageContainer.Selected|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [fileStorageContainer](../resources/filestoragecontainer.md) object.

You can specify the following properties when creating a **fileStorageContainer**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the container. Required.|
|description|String|Provides a user-visible description of the item. Optional.|
|containerTypeId|Guid|Container type of the container instance. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) object in the response body.

## Examples

### Request
The following example shows how to create a fileStorageContainer.
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

