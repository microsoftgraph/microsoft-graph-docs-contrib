---
title: "Get drive for fileStorageContainer"
description: "Get the properties of a drive associated with a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Get drive for fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a [drive](../resources/drive.md) associated with a [fileStorageContainer](../resources/filestoragecontainer.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have permissions to delete a fileStorageContainer for the respective container type.

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
GET /storage/fileStorage/containers/{containerId}/drive
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|


## Response

If successful, this method returns a `200 OK` response code and a [drive](../resources/drive.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_drive"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/drive
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.drive"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "createdDateTime": "2022-04-25T20:11:51Z",
  "description": "My Application Storage Container",
  "driveType": "other",
  "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
  "lastModifiedDateTime": "2022-04-25T20:11:51Z",
  "name": "My Container",
  "createdBy": {
    "user": {
    "displayName": "System Account"
    }
  },
  "lastModifiedBy": {
    "user": {
    "displayName": "System Account"
    }
  },
  "owner": {
    "user": {
    "displayName": "System Account"
    }
  },
  "quota": {
    "deleted": 0,
    "fileCount": 0,
    "remaining": 0,
    "state": "normal",
    "total": 0,
    "used": 0
  }
}
```

## See also

You can also use the following methods to get the drive directly with a driveID. PLACE HOLDER FOR LINKS 

|Task name|Example request|
|:---|:---|
|Get drive by driveID|GET /drives/{driveId}|
