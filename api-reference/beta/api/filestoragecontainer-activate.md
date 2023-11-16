---
title: "Activate fileStorageContainer"
description: "Activate a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Activate a fileStorageContainer
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

FileStorageContainers are created in an inactive state, indicated by the container's status property. A container must be activated within 24 hours after creation or is automatically deleted. The container's status property is set to "active" upon successful activation.

A fileStorageContainer can be activated by calling the activate API or any API that updates or modifies the container or its content. For example, uploading a file to a container activates the container.

The application calling this API must have write permission to fileStorageContainers for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference). 


|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
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

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.activate"
}
-->
``` http
POST /storage/fileStorage/containers/{containerId}/activate
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

## Other activation methods
A fileStorageContainer can be activated by calling any API that mutates the container or its content, including:

|Task name|Example request|
|:---|:---|
|Update a fileStorageContainer|PATCH /storage/fileStorage/containers/{containerId}|
|Add permissions to a fileStorageContainer|POST /storage/fileStorage/containers/{containerId}/permissions|
|Create or update custom properties of a fileStorageContainer|PATCH /storage/fileStorage/containers/{containerId}/customProperties|
|Create a new file or folder in the container's drive|POST /drives/{driveId}/items/{itemId}/children|

