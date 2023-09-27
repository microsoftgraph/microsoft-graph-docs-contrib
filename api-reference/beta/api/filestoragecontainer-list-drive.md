---
title: "List drive"
description: "Get the drive resources from a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# List drive
Namespace: microsoft.graph



Get the [drive](../resources/drive.md) resource from a fileStorageContainer. The application calling this API must have permissions to access the contents in the containers of the respective containerType.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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

If successful, this method returns a `200 OK` response code and a collection of [drive](../resources/drive.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_drive"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/drive
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(oneDrive.drive)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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


## Other methods
The drive in a file storage container can also be retrieved by calling the get [drive](../resources/drive.md) API directly. he application calling this API must have permissions to access the contents in the containers of the respective containerType.

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_drive"
}
-->
``` http
GET /drives/{driveID}
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(oneDrive.drive)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
