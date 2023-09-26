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



Create a new [fileStorageContainer](../resources/filestoragecontainer.md) object. 

For Delegated calls, the calling user will be set as the owner (for tenant-owned contaienrs in Enterprise space) and the principalOwner (for user-owned containers in Consumer space) of the container. Respective container type identified by containerTypeId must be enabled in the tenant and the calling application must have permission to create containers of that type.

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
|permissions|Permissions of users in the container. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) object in the response body.

## Examples

### Request
The following is an example of creating a tenant-owned fileStorageContainer in the Enterprise space.
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainer_from_filestoragecontainers"
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
}
```


### Response
The following is an example of the response.
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

### Request
The following is an example of creating a user-owned fileStorageContainer in the Consumer space and expand its permission property.
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainer_from_filestoragecontainers"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers?$expand=permissions
Content-Type: application/json

{
  "displayName": "John's Workspace Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "permissions": [
    {
      "roles": ["principalOwner"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "john@outlook.com"
        }
      }
    }
  ]
}
```


### Response
The following is an example of the response.
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
  "id": "b!TckuKYHX5EiTvYXxBORoY4cAt3c7WkdMmKCnkhiBBn4ZULWQpZP8T60xBpwpdMmw",
  "displayName": "John's Workspace Container",
  "description": "",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "status": "inactive",
  "createdDateTime": "2022-07-23T16:40:50.124Z",
  "permissions": [
    {
      "id": "b3duZXJfaTowIy5mfG1lbWJlcnNoaXB8YWRtaW5Ab2lkY3Rlc3QuY2NzY3RwLm5ldA",
      "roles": ["principalOwner"],
      "grantedToV2": {
        "user": {
          "id": "2fn94f64b16e",
          "userPrincipalName": "john@outlook.com",
          "displayName": "John Doe",
          "email": "john@outlook.com"
        }
      }
    }
  ]
}
```
