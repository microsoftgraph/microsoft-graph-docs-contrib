---
title: "filStorageContainer: activate"
description: "Activate a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# filStorageContainer: activate


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a [fileStorageContainer](../resources/filestoragecontainer.md) object.

A **fileStorageContainer** object is created in an inactive state, as indicated by the **status** property. A container must be activated within 24 hours after creation, or it is automatically deleted. Upon activation, the value of the status property changes from `inactive` to `active`.

A fileStorageContainer can be activated by calling the activate API or any API that updates or modifies the fileStorageContainer or its content. For example, uploading a file to a fileStorageContainer, adding permission to a fileStorageContainer, creating custom property to a fileStorageContainer, or updating the properties of a fileStorageContainer can activate the fileStorageContainer.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have write permissions to a fileStorageContainer for the respective container type.


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
POST /storage/fileStorage/containers/{containerId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "activate_filestoragecontainer"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/activate
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

