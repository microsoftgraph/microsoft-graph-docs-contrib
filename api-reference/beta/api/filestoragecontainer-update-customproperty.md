---
title: "Update custom property on a fileStorageContainer "
description: "Update custom property on a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update custom properties of fileStorageContainer
Namespace: microsoft.graph

> [!IMPORTANT]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported. To determine whether an API is available in v1.0, use the **Version** selector.

Update one or multiple custom properties on a fileStorageContainer. Only the **value** and **isSearchable** attributes of custom properties can be updated. 

Only the custom properties specified in the request body are updated. If a custom property specified in the request body does not exist on the container, it will be created. 

Updating a custom property to null deletes the property from the container.

The application calling this API must have read/write permissions to fileStorageContainers for the respective container type.

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
PATCH /storage/fileStorage/containers/{containerId}/customProperties
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
In the request body, supply the custom properties for update and the new values for the relevant fields. 

The following properties on custom properties can be modified.

|Property|Type|Description|
|:---|:---|:---|
|value|String|Value of the custom property.|
|isSearchable|Boolean|Indicator if the property is searchable.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following is an example of updating the value property of the custom properties clientUniqeId and color. Note isSearchable for clientUniqueId was set to True prior to calling this API.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.update-customproperty"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}/customProperties
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b"
  },
  "color": {
    "value": "green"
  }
}
```


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 Ok

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  },
  "color": {
    "value": "green",
    "isSearchable": false
  }
}
```

