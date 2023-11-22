---
title: "Create permission"
description: "Add a permission to a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Create permission


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [permission](../resources/permission.md) to an existing [fileStorageContainer](../resources/filestoragecontainer.md). 


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have permission to add permissions to a fileStorageContainer for the respective container type.

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
POST /storage/fileStorage/containers/{fileStorageContainerId}/permissions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request
The following example shows how to add a new user as a reader to a container.
<!-- {
  "blockType": "request",
  "name": "create_permission",
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/permissions
Content-type: application/json

{
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "userPrincipalName": "jacob@fabrikam.com"
    }
  }
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "cJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJliZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "userPrincipalName": "jacob@fabrikam.com",
      "displayName": "Jacob Hancock",
      "email": "jacob@fabrikam.com"
    }
  }
}
```

