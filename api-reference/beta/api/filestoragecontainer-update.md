---
title: "Update fileStorageContainer"

description: "Update the properties of a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update fileStorageContainer


Namespace: microsoft.graph

> [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [fileStorageContainer](../resources/filestoragecontainer.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have read/write permissions to a fileStorageContainer for the respective container type.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|FileStorageContainer.Selected|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the new values for the fileStorageContainer properties. Existing properties not included in the request body maintain their previous values. To optimize performance, you shouldn't include existing values that didn't change.

> [!Note]
> Not all fileStorageContainer properties can be changed via this API.

## Response
If successful, this method returns a `200 OK` response code and an updated [fileStorageContainer](../resources/filestoragecontainer.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}
Content-Type: application/json

{
  "displayName": "Updated Name",
  "description": "Updated Description"
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
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainer",
  "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
  "displayName": "Updated Name",
  "description": "Updated Description",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "status": "active",
  "createdDateTime": "2021-11-24T15:41:52.347Z"
}
```

